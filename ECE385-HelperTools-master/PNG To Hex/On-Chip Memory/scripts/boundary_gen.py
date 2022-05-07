
import numpy as np
from copy import deepcopy
import random


def get_coords ():
    data = np.genfromtxt('sprite_bytes/filled.txt',delimiter='\n')
    print(data.shape)
    data = data.reshape(480,-1)

    # tmp = np.array([i for i in range(300)]).reshape(20,-1)
    # div = 5
    # data = np.array([int(np.floor(random.random()*100) % 2) for i in range((640 >> div) * (480 >> div))]).reshape(-1, (640 >> div))
    # data = np.array(
    # [[0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0],
    #  [1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0],
    #  [0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1],
    #  [1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0],
    #  [0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0],
    #  [0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0],
    #  [1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0],
    #  [0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1],
    #  [1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0],
    #  [1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0],
    #  [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0],
    #  [0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0],
    #  [1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0],
    #  [0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1],
    #  [0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1]]
    #  )

    idxs_1 = []

    print(data.shape)
    outfile = 'sprite_bytes/data.txt'
    with open (outfile, 'w') as f:
        f.write('   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9\n')
        f.write('__________________________________________\n')
        for i, row in enumerate(data):
            f.write(str(i%10) + ' ' + str(row) + '\n')


    # print('   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9')
    # print('__________________________________________')
    # for i, row in enumerate(data):
    #     print(i%10, row)

    for i in range(data.shape[0]):
        for j in range(data.shape[1]):
            if (data[i,j]):
                idxs_1.append([[i],[j]])

    # print('\n')
    # print(idxs_1)
    i = 0
    while (i < len(idxs_1)):
        # print('i is ', i)
        j = i + 1
        # print('so j is ', j)
        while ((j < len(idxs_1)) and (idxs_1[i][1][-1] + 1) == idxs_1[j][1][0]):
            idxs_1[i][1].append(deepcopy(idxs_1[j][1][0]))
            j += 1
            # print('j is ',j)
        # idxs[i][1] = [idxs[i][1][0], idxs[i][1][-1]]
        # print('i and j are {}, {}'.format(i,j))
        del idxs_1[i+1:j]
        # i = j
        i += 1
        # print('i updated to ',i)

    # print("\n\nAfter first combination\n\n")
    # print(idxs_1)
    # print(len(idxs_1))

    #########################################################
    data_2 = data.T
    idxs_2 = []

    for i in range(data_2.shape[0]):
        for j in range(data_2.shape[1]):
            if (data_2[i,j]):
                idxs_2.append([[i],[j]])

    i = 0
    while (i < len(idxs_2)):
        j = i + 1
        while ((j < len(idxs_2)) and (idxs_2[i][1][-1] + 1) == idxs_2[j][1][0]):
            idxs_2[i][1].append(deepcopy(idxs_2[j][1][0]))
            j += 1
        # idxs[i][1] = [idxs[i][1][0], idxs[i][1][-1]]
        del idxs_2[i+1:j]
        # i = j
        i += 1

    idxs_2 = [[i[1],i[0]] for i in idxs_2]
    for i in range(len(idxs_2)):
        if (1==len(idxs_2[i][0])):
            idxs_2[i]=[[idxs_2[i][0][0],100],idxs_2[i][1]]
    idxs_2.sort()
    for i in range(len(idxs_2)):
        if (100==idxs_2[i][0][1]):
            idxs_2[i]=[[idxs_2[i][0][0]],idxs_2[i][1]]

    # print(idxs_2)
    # print('\n')

    i = 0
    while (i < len(idxs_2)):
        j = i + 1
        while ((j < len(idxs_2)) and (idxs_2[i][1][-1] + 1) == idxs_2[j][1][0]):
            idxs_2[i][1].append(deepcopy(idxs_2[j][1][0]))
            j += 1
        del idxs_2[i+1:j]
        # i = j
        i += 1


    # print("\n\nAfter second combination\n\n")
    # print(idxs_2)
    # print(len(idxs_2))

    #################################################################################

    # remove duplicates between the two sets
    # for i in range(len(idxs_2)):
    #     rows, cols = idxs_2[i]
    #     for row in rows:
    #         try:
    #             # print([[row], cols])
    #             dup_idx = idxs_1.index([[row], cols])
    #         except ValueError as e:
    #             # print(e)
    #             continue
    #         del idxs_1[dup_idx]

    # get ranges instead of all cols / rows
    offset = 2
    for i in range(len(idxs_1)):
        rows, cols = idxs_1[i]
        if (len(rows) > 1):
            min_v = min(rows) - offset
            max_v = max(rows) + offset
            idxs_1[i][0] = [max(min_v,0), min(max_v, data.shape[0]-1)]
            if abs(idxs_1[i][0][1] - idxs_1[i][0][0]) == 1:
                idxs_1[i][0][1] = min(idxs_1[i][0][1] + 1, data.shape[0] - 1)
            if abs(idxs_1[i][0][1] - idxs_1[i][0][0]) == 1:
                idxs_1[i][0][1] = max(idxs_1[i][0][0] - 1, 0)
        elif (len(rows) == 1):
            min_v = rows[0] - offset
            max_v = rows[0] + offset
            idxs_1[i][0] = [max(min_v,0), min(max_v, data.shape[0]-1)]
            if abs(idxs_1[i][0][1] - idxs_1[i][0][0]) == 1:
                idxs_1[i][0][1] = min(idxs_1[i][0][1] + 1, data.shape[0] - 1)
            if abs(idxs_1[i][0][1] - idxs_1[i][0][0]) == 1:
                idxs_1[i][0][1] = max(idxs_1[i][0][0] - 1, 0)
        if (len(cols) > 1):
            min_v = min(cols) - offset
            max_v = max(cols) + offset
            idxs_1[i][1] = [max(min_v,0), min(max_v,data.shape[1] - 1)]
            if abs(idxs_1[i][1][1] - idxs_1[i][1][0]) == 1:
                idxs_1[i][1][1] = min(idxs_1[i][1][1] + 1, data.shape[1] - 1)
            if abs(idxs_1[i][1][1] - idxs_1[i][1][0]) == 1:
                idxs_1[i][1][1] = max(idxs_1[i][1][0] - 1, 0)
        elif (len(cols) == 1):
            min_v = cols[0] - offset
            max_v = cols[0] + offset
            idxs_1[i][1] = [max(min_v,0), min(max_v,data.shape[1] - 1)]
            if abs(idxs_1[i][1][1] - idxs_1[i][1][0]) == 1:
                idxs_1[i][1][1] = min(idxs_1[i][1][1] + 1, data.shape[1] - 1)
            if abs(idxs_1[i][1][1] - idxs_1[i][1][0]) == 1:
                idxs_1[i][1][1] = max(idxs_1[i][1][0] - 1, 0)

    # get ranges instead of all cols / rows
    for i in range(len(idxs_2)):
        rows, cols = idxs_2[i]
        if (len(rows) > 1):
            min_v = min(rows) - offset
            max_v = max(rows) + offset
            idxs_2[i][0] = [max(min_v,0), min(max_v, data.shape[0]-1)]
            if abs(idxs_2[i][0][1] - idxs_2[i][0][0]) == 1:
                idxs_2[i][0][1] = min(idxs_2[i][0][1] + 1, data.shape[0] - 1)
            if abs(idxs_2[i][0][1] - idxs_2[i][0][0]) == 1:
                idxs_2[i][0][1] = max(idxs_2[i][0][0] - 1, 0)
        elif (len(rows) == 1):
            min_v = rows[0] - offset
            max_v = rows[0] + offset
            idxs_2[i][0] = [max(min_v,0), min(max_v, data.shape[0]-1)]
            if abs(idxs_2[i][0][1] - idxs_2[i][0][0]) == 1:
                idxs_2[i][0][1] = min(idxs_2[i][0][1] + 1, data.shape[0] - 1)
            if abs(idxs_2[i][0][1] - idxs_2[i][0][0]) == 1:
                idxs_2[i][0][1] = max(idxs_2[i][0][0] - 1, 0)
        if (len(cols) > 1):
            min_v = min(cols) - offset
            max_v = max(cols) + offset
            idxs_2[i][1] = [max(min_v,0), min(max_v,data.shape[1] - 1)]
            if abs(idxs_2[i][1][1] - idxs_2[i][1][0]) == 1:
                idxs_2[i][1][1] = min(idxs_2[i][1][1] + 1, data.shape[1] - 1)
            if abs(idxs_2[i][1][1] - idxs_2[i][1][0]) == 1:
                idxs_2[i][1][1] = max(idxs_2[i][1][0] - 1, 0)
        elif (len(cols) == 1):
            min_v = cols[0] - offset
            max_v = cols[0] + offset
            idxs_2[i][1] = [max(min_v,0), min(max_v,data.shape[1] - 1)]
            if abs(idxs_2[i][1][1] - idxs_2[i][1][0]) == 1:
                idxs_2[i][1][1] = min(idxs_2[i][1][1] + 1, data.shape[1] - 1)
            if abs(idxs_2[i][1][1] - idxs_2[i][1][0]) == 1:
                idxs_2[i][1][1] = max(idxs_2[i][1][0] - 1, 0)



    print("\n\nAfter third computation\n\n")
    print(idxs_1)
    print('\n')
    print(idxs_2)
    print('\n\n')

    #################################################################################

    # print(list(np.concatenate((np.array(idxs_1), np.array(idxs_2)))))
    return np.concatenate((np.array(idxs_1), np.array(idxs_2)))

def make_file():
    wall_constraints = get_coords()
    wall_sig = 'Is_Wall'
    xpos = 'X_Pos'
    ypos = 'Y_Pos'
    xdt = 'X_Motion'
    ydt = 'Y_Motion'
    size = 'Size'

    outfile = 'sprite_bytes/collision.sv'
    with open (outfile, 'w') as f:
        f.write('module pacman_wall_collision (\n')
        f.write('\tinput logic [9:0] X_Pos,\n')
        f.write('\tinput logic [9:0] Y_Pos,\n\n')
        f.write('\toutput logic Is_Wall);\n\n')
        f.write('always_comb begin\n')
        f.write('\t{} = 1\'b0;\n\n'.format(wall_sig,wall_sig))
        for i,constraint in enumerate(wall_constraints):
            rows, cols = constraint
            if (i == 0):
                # f.write ('\tif (({} > {}) && ({} < {}) && ({} > {}) && ({} < {})) \n\tbegin\n\t\t{} = 1\'b1;\n\tend\n\n'.format(xpos, cols[0], xpos, cols[1], ypos, rows[0], ypos, rows[1], wall_sig))
                f.write ('\tif (({} > 10\'d{}) && ({} < 10\'d{}) && ({} > 10\'d{}) && ({} < 10\'d{})) {} = 1\'b1;\n\n'.format(xpos, cols[0], xpos, cols[1], ypos, rows[0], ypos, rows[1], wall_sig))
            else:
                f.write ('\tif (({} > 10\'d{}) && ({} < 10\'d{}) && ({} > 10\'d{}) && ({} < 10\'d{})) {} = 1\'b1;\n\n'.format(xpos, cols[0], xpos, cols[1], ypos, rows[0], ypos, rows[1], wall_sig))
        f.write('\tif (~{}) {} = 1\'b0;\n'.format(wall_sig,wall_sig))
        f.write('end')
        f.write('\n\nendmodule\n\n')
    f.close()

make_file()


"""

(X_Pos > 305) && (X_Pos < 334) && (Y_Pos > 210) && (Y_Pos < 214)

this is the gate on the ghost box, pacman shouldn't be able to go through but ghosts should

"""