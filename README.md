# kristin-challenge


Bowling
---------------

Build a program that will accept a text file that contains all of the bowling throws for complete games that involves
multiple players. The program should process the input file, calculate the scores for each player, and output a summary
with the score of each player sorted by highest score.

Requirements
  - Input will be space delimited.
  - Each line consists of a frame.
  - The order of the lines is the order of the frames.

Input assumptions
- Player names will always be a string of only alpha characters
- All input is space delimited and valid
- Scores are always numeric.

Example input:
John 8 2
Lucy 0 0
John 3 0
Lucy 10
John 10
Lucy 0 10
John 10
Lucy 4 6
John 0 0
Lucy 10
John 9 1
Lucy 10
John 5 5
Lucy 5 5
John 10
Lucy 10
John 10
Lucy 10
John 10 10 10
Lucy 10 2 8

Example output:
Lucy 191
John 171
