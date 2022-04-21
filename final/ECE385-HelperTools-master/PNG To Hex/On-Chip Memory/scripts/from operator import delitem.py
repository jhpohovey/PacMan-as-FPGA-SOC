from operator import delitem
import numpy as np

data = np.genfromtxt('../sprite_bytes/maze.txt',delitem='\n')

data.reshape(400,-1)