import cv2 as cv
import numpy as np
import sys
from regex import R
from tqdm import tqdm

def read_img(name):
    path = "./sprite_originals/{}".format(name)
    print(f'Path: {path}\n')
    image = cv.imread(path)
    try:
        type(image) != np.ndarray
    except AttributeError:
        print("Image read failed.")
        sys.exit(0)

    return image

def threshold(image):
    
    gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
    
    blur = cv.GaussianBlur(gray, (3, 3), cv.BORDER_DEFAULT)
    ret, thresh = cv.threshold(blur, 100, 255, cv.THRESH_BINARY_INV)
    
    # cv.imwrite(thresh, "temp_thresh.png")
    return thresh

def get_contour(thresh):
    contours, hierarchies = cv.findContours(thresh, cv.RETR_LIST, cv.CHAIN_APPROX_SIMPLE)

    blank = np.zeros(thresh.shape[:2], dtype='uint8')
 
    cv.drawContours(blank, contours, -1, (255, 0, 0), 1)
    
    cv.imwrite("Contours.png", blank)
    return contours, blank

def draw_centers(image, contours):
    rem = [(319,212), (140,92), (140,350), (498,350), (498,92)]
    coords = np.zeros((len(contours)-len(rem),2))
    ct = 0
    
    for idx, i in enumerate(contours):
        M = cv.moments(i)
        if M['m00'] != 0:
            cx = int(M['m10']/M['m00'])
            cy = int(M['m01']/M['m00'])
            cv.drawContours(image, [i], -1, (0, 255, 0), 2)
            cv.circle(image, (cx, cy), 7, (0, 0, 255), -1)
            cv.putText(image, "center", (cx - 20, cy - 20), cv.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0), 2)
        
        # print(idx)
        if not (cx in [319,140,140,498,498] and cy in [212,92,350,350,92]):
            coords[idx-ct][0] = cx
            coords[idx-ct][1] = cy
            print(f"x: {cx} y: {cy}")
        else:
            ct += 1
    return image, coords

def generate_cookie_wrapper_sv(coords):
    print('Starting cookie wrapper')
    xpos = 'X_Pos'
    ypos = 'Y_Pos'
    size = 'Sizep'
    clk = 'Clk'
    rst = 'Reset'
    bx = 'BallX'
    by = 'BallY'
    bs = 'Ball_Size'
    no_eat = 'Not_ate'
    past_eat = 'Prev_ate'
    rem = [(319,212), (140,92), (140,350), (498,350), (498,92)]
    cookie_ct = '`COOKIE_COUNT'
    score_tot = 'Total_Score'

    outfile = 'sprite_bytes/cookies_wrapper_all.sv'
    with open (outfile, 'w') as f:
        f.write(f'`define {cookie_ct[1:]} {coords.shape[0]}\n\n')
        f.write('module {} (\n'.format(outfile[outfile.find('/')+1:-3]))
        f.write('\tinput logic {},\n'.format(rst))
        f.write('\tinput logic {},\n'.format(clk))
        f.write('\tinput logic [9:0] {},\n'.format(bx))
        f.write('\tinput logic [9:0] {},\n'.format(by))
        f.write('\tinput logic [9:0] {},\n\n'.format(bs))
        f.write('\toutput logic [{}:0] {},\n'.format(int(np.ceil(np.log(coords.shape[0]) / np.log(2)))-1, score_tot))
        f.write('\toutput logic [{}-1:0] {}\n);\n\n'.format(cookie_ct, no_eat))
        f.write('logic summation_tmp;\n')
        f.write(f'reg [{cookie_ct}-1:0] cookie_scores;\n\n')
        f.write('\n\ninteger i;\n')
        f.write('always_comb begin\n')
        f.write(f'\tfor(i = 0; i < {cookie_ct}; i = i + 1) begin\n')
        f.write('\t\tsummation_tmp += cookie_scores[i];\n')
        f.write('\tend\n')
        f.write('end\n')
        f.write(f'\n\nalways_ff @ (posedge {clk} or posedge {rst})begin\n')
        f.write(f'\tif ({rst}) {score_tot} <= 1\'b0;\n') 
        f.write(f'\telse {score_tot} <= summation_tmp;\n')
        f.write('end\n\n')
        for i,pair in tqdm(enumerate(coords)):
            x_10,y_10 = pair
            x_10 = int(x_10)
            y_10 = int(y_10)
            x_16 = hex(x_10)[2:]
            y_16 = hex(y_10)[2:]
            if (x_10,y_10) not in rem: # remove big power ups and ghost wall
                f.write('cookie ck{} (.Clk({}), .Reset({}), .Xc(10\'d{}), .Yc(10\'d{}), .Xp({}), .Yp({}), .Sizep({}), .Not_ate({}[{}]), .Score(cookie_scores[{}]) );\n\n'.format(i, clk, rst, x_10, y_10, bx, by, bs, no_eat, i, i))
        f.write('\n\nendmodule\n\n')
    f.close()

def generate_cookie_draw_sv(coords):
    print('Starting cookie draw')
    xpos = 'X_Pos'
    ypos = 'Y_Pos'
    size = 'Size'
    no_eat = 'Not_ate'
    on = 'cookie_on'
    print(coords)

    rem = [(319,212), (140,92), (140,350), (498,350), (498,92)]

    outfile = 'sprite_bytes/cookie_draw.sv'

    with open(outfile, "w") as f:
        f.write('module {} (\n'.format(outfile[outfile.find('/')+1:-3]))
        f.write('\tinput logic [9:0] X_Pos,\n')
        f.write('\tinput logic [9:0] Y_Pos,\n')
        f.write('\tinput logic [{}:0] Not_ate,\n\n'.format(coords.shape[0]-1))
        f.write('\toutput logic cookie_on);\n\n')
        f.write('always_comb begin\n')
        f.write('\tcookie_on = 1\'b0;\n')
        for i,pair in tqdm(enumerate(coords)):
            x,y = pair
            x = int(x)
            y = int(y)
            if (x,y) not in rem:
                f.write ('\tif (({}[{}] == 1\'b1) && ({} >= 10\'d{}) && ({} <= 10\'d{}) && ({} >= 10\'d{}) && ({} <= 10\'d{})) {} = 1\'b1;\n\n'.format(no_eat, i, xpos, x-2, xpos, x+2, ypos, y-2, ypos, y+2, on))
        f.write('end\n')
        f.write('\n\nendmodule\n\n')
    f.close()


if __name__ == "__main__":
    fname = "dotmaze-fin.png"

    img = read_img(name=fname)
    # cv.imshow("orig", img)

   
    thresh = threshold(img)
    # cv.imshow("threshold", thresh)

    contours,blank = get_contour(thresh)
    # cv.imshow("contoured", blank)

    final_image, coord_pairs = draw_centers(img, contours)
    print(coord_pairs)
    coord_pairs = coord_pairs[:-1,]
    # cv.imshow("final", final_image)
    generate_cookie_wrapper_sv(coords=coord_pairs)
    generate_cookie_draw_sv(coords=coord_pairs)
    print("\nDone")

    # cv.waitKey(0)
    # cv.destroyAllWindows()