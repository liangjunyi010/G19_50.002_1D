# Prezzer

### Acknowledgement

- Tran Nguyen Bao Long
- Kat Yong Jie
- Liang Junyi
- Wang Zhuoran
- Lu Mingrui
- Han Jin
- Sun Zhengnan
- Yang Haocheng

### Description

For our 50.002 project, we have created a single-player game called Prezzer. The objective of the game is to score the highest amount of points possible before the 30 seconds count down and avoid pressing the wrong button.

This is a game whereby the player must observe a matrix of LED lights, this LED matrix consists of three columns and four rows and there are 3 different coloured lights: red, green and blue player need to press different times to clear different color LED: red 3 times, green 2 times and red 1 times, and each row only lights one LED, Player need to press the right buttons based on the LED light at the lowest level with the corresponding colors and position.

The coloured LED will move down after we press the button correctly from the top to the bottom. If the player presses the wrong button. The game ends if the player presses the wrong button or runs out of time, and the final score will be displayed on the 7 seg on the top left of the game and time left will be displayed on the 7 seg on the top right of the game.

### How to play

1. Press RESET button to start
2. Colored tiles will be randomly generated on the three columns
3. Press button below corresponding column
4. Clear as many tiles as you can within 30 seconds and get the max score
5. Pressing a button for the wrong column will mean game over.

### Tiles scores

- Red: 3 presses = 3 points
- Green: 2 presses = 2 points
- Blue: 1 press = 1 point

Red turns to Green turns to Blue CLEAR for each correct press

### ALU Function

| Operation   | ALUFN | Decimal |
| ----------- | ----- | ------- |
| ADD         | 0000  | 0       |
| SUB         | 0001  | 1       |
| MUL (extra) | 0010  | 2       |
| CMPEQ       | 0011  | 3       |
| CMPLT       | 0100  | 4       |
| CMPLE       | 0101  | 5       |
| AND         | 0110  | 6       |
| OR          | 0111  | 7       |
| XOR         | 1000  | 8       |
| A           | 1001  | 9       |
| SHL         | 1010  | 10      |
| SHR         | 1011  | 11      |
| SRA         | 1100  | 12      |
| SHD(extra)  | 1101  | 13      |
| B(extra)    | 1110  | 14      |
| ENQ(extra)  | 1111  | 15      |

### Finite State Machine

![image-20220518162522273](https://s2.loli.net/2022/05/18/9SUiIrtzADcaMw3.png)

### Datapath

![image-20220518162707353](https://s2.loli.net/2022/05/18/WgMfF9HcGOLhiDV.png)

### Game Video
<video src="https://drive.google.com/drive/folders/1I1gZKp6AiTt99a2aXB55q5OHeVtaDIEL"></video>
