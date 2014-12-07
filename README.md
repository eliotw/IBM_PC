IBM PC
======

Design Database Information
======
* CF: CompactFlash files for download to FPGA.
* biosimages: Images of the IBM PC BIOS.
* components: Early-stage Verilog descriptions of our components. Please note that most of these are out-of-date. Up-to-date versions are available in the pc directory.
* cores: The original versions of the Zet processor components.
* dosimages: Images of MS-DOS and CP/M that we ended up not using.
* finalreport: Location of our final report for reference.
* games: BASIC files of the games that we used for our demo.
* labs: Files for labs 1, 2, and 3.
* pc: This directory contains the entire Verilog structure for the IBM PC. All the files in there are up-to-date and include the ISE project files.
* refdocs: Some reference documents we used for our project.
* zet: Invalid directory that refuses to disappear.

Game Description
======
* All information refers to "demo4.BAS", the version we used for our demo.
* Choice 0: Exit
  * Exits the game.
  * Click "F2" to re-enter the game.
* Choice 1: Hi-Lo
  * This is a relatively simple 1 player game.
  * You must guess X, where X is between 1 and 100 inclusive.
  * You have six guesses to guess X.
  * The game will tell you if you are too low or too high.
  * If you win, you get X dollars.
  * If you lose, you lose all of your winnings.
  * To play again, be sure to type "YES" in all caps.
  * This game was obtained from: http://www.vintage-basic.net/games.html
* Choice 2: Arpeggio
  * This is a demonstration of the sound capabilities of the IBM PC.
  * It plays a simple arpeggio from 440 Hz to 1000 Hz and from 1000 Hz to 440 Hz.
  * Once it completes, it returns back to the default screen.
* Choice 3: Game of Life
  * This is a relatively complex 2 player game.
  * There are two players who must ensure the survival of their respective species.
  * Player 1 gets "*" pieces and Player 2 gets "#" pieces.
  * The game is played on a 5x5 grid.
  * The game starts by Player 1 and Player 2 placing their 3 initial pieces on the grid.
  * There is a random chance of dying associated with each piece placed on the board.
  * Pieces placed next to each other have a random chance of reproduction.
  * Every turn, each player gets a chance to place a new piece.
  * If a player runs out of pieces, the other player wins the game.
  * This game was obtained from: http://www.vintage-basic.net/games.html
  * Once the game ends, it will exit our demo program. Press "F2" to reenter the demo program.
* Choice 4: ???
  * This is a "secret" sound demo that demonstrates the more advanced sound capabilities of the IBM PC.
  * It plays "The Imperial March" by John Williams.
  * Since IBM is sometimes considered the "evil empire" of computer companies, it makes sense to have this as a demo.
  * Once it completes, it returns back to the default screen.

Implementation Description
======

Our implementation of the IBM PC consists of a series of Verilog files that are stored in the directory labeled "pc". All the files needed to synthesize and implement our design are located there. The main module for the IBM PC is the motherboard, which is located in motherboard.v. The design is partitioned into a series of motherboard slices that contain all the components. For a detailed implementation description, please look in the folder labeled "finalreport" for a PDF copy of our Final Report. All the information you require is under "What We Built -> Detailed Hardware Description".

Floppy Disk Information
======

All the files that we used in our floppy disk implementation are located under "components -> fdc". Feel free to use them as you see fit. We never got floppy disk working, so use them at your own risk!
