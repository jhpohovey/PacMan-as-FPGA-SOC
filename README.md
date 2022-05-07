# ECE 385 Final Project - Theme and Variations on Pac-Man

### John Pohovey, Arjun Ray

## Overview
This final project is implemented entirely in hardware (aside from keyboard initialization in C), largely based on Pac-Man, but with some new twists and quirks of original design.

## Features
WASD Keyboard-controllable Pac-Man, Maze Wall Collisions, Game timer on FPGA Hex Display, Score counter on FPGA LEDs, Teleporting Ghosts using LFSRs for randomization, and tunnel from left to right of maze. A 'Game Over' screen will appear when either all cookies are eaten or Pac-Man collides with a ghost. 

## How to run
This project was developed and tested on a DE-10 Lite FPGA Board using Quartus on Ubuntu 20.04. Use the pin mappings found in the .QSF file in this repository. Set the top level file as lab62.sv, and compile and program the board. To enable keyboard, open the final directory in Eclipse, and then generate a new BSP, build the project, and finally run the code to initialize the keyboard and get keycodes.


