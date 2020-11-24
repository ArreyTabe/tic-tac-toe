![](https://img.shields.io/badge/Microverse-blueviolet)

## Tic Tac Toe Game

A 3x3 grid game played by two users where each user takes turns in playing. The one who gets 3 consecutive cells(boxes) **Wins!** 

## How to start the game?

- Clone the project by running `git clone https://github.com/krishnzzz/tic_tac_toe.git` on Terminal/CMD or download and extract it from the repository.
- Open Terminal/CMD from the folder you downloaded or cloned.
- Run `ruby bin/main`

## Game Play Details

![screenshot](asset/tic-tac-toe-grid.png)

The game board is as shown above, a 3x3 grid where each player takes a turn and plays.

- The game starts by prompting both players for their names.
- We assume player one always starts, then player two
- Conventional symbols are ('x') for player one and ('o') for player two

![screenshot](asset/grid_with_symbols.png)

##### There are four Winning possibilities for each player:

1) If a symbol ('x' or 'o') at any given point occupies an entire row (a1:a3, or b1:b3 or c1: c3) 
2) an entire column (a1:c1 or a2:c2 or a3:c3) 
3) if the symbol occupies the leading diagonal 
4)  or if the symbol occupies the antidiagonal.

 The first player to fulfill any of the above conditions is declared **Winner!**

 ![screenshot](asset/winning_grid.png.png)

##### Draw

There is a draw (or tie) if all cells are occupied without any player meeting the above conditions.

![screenshot](asset/draw_grid.png)

## Game Conditions

- A cell can either be empty or owned by a player
- A **valid move** is possible only when a cell is empty.
- An **input is valid** if it is either a1,a2,a3 or b1,b2,b3 or c1, c2, c3



## Project Description

The project was implemented in the following milestones:

**Milestone 1**
This was the setup milestone where we setup necceesary files for the project. The milestone was named **setup-feature**

**Milestone 2**
For this milestone we designed our board, our 3x3 grid and inserted randomly the symbols. The milestone was named  **user_interface-feature**

**Milestone 3**
This is where the actual implementation takes place, all considerations and assumptions for plays are done here:

- Create game and player classes to hold the attributes and methods
- Determine players name and symbol
- Check for valid input and moves
- Create Game Flow with each player taking turns
- Declare the winner or if nobody wins, a draw

The milestone was named  **game_logic-feature**

**Milestone 4**
The Gaming instructions were written. The milestone was named **readme_game_instructions-feature**

## Designed With
- Ruby
- Git
- Rubocop
- VS Code
- Repl.it


## Contributing

Contributions, issues and feature requests are welcome! Start by:

  - Forking the project
  - Cloning the project to your local machine
  - cd into the project directory
  - Run git checkout -b your-branch-name
  - Make your contributions
  - Push your branch up to your forked repository
  - Open a Pull Request with a detailed description to the development branch of the original project for a review


## Live Demo

[Live Demo Link](https://repl.it/github/krishnzzz/tic_tac_toe)

## Contributors


👤  **Suyash Fowdar**


- Github: [@Krishnzzz](https://github.com/krishnzzz)
- Twitter: [@Krishnzzz](https://twitter.com/Krishnzzz)
- LinkedIn: [Suyash Fowdar](https://www.linkedin.com/in/suyash-fowdar-22b89514a/)

👤 **Arrey Tabe**

- Github: [ArreyTabe](https://github.com/ArreyTabe)
- Twitter: [@tabe_arrey](https://twitter.com/tabe_arrey)
- LinkedIn: [Arrey Affuembey](https://www.linkedin.com/in/arrey-affuembey-80a8b11a8/)

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](https://choosealicense.com/licenses/mit/) licensed.


