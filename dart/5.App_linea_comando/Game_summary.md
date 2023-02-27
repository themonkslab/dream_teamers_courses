# Game summary

In this section we are going to create a _command line_ version of the classic 'Rock, Paper, Scissors'.

The game consists of choosing between these three elements and the rules are:

- Rock beats scissors.
- Scissors beats paper.
- Paper beats rock.

We are going to implement this game so that each of you faces the computer. The program will ask you what you are playing, the computer will make its move and then the outcome is determined.

We will learn how to get an _input_ from the console and how to choose _random numbers_. Below, the _requirements_:

## 💪 Rock, Paper, Scissors

__Requirement__: create a command line tool that can play rock-paper-scissors.

1. When initializing, the game has to display a _prompt_ like the following: `Rock, paper or scissors (r/p/s). --Use 'q' to end the game`..
2. It must read that _input_ and use it as follows:
    - If the user enter 'r', 'p', or 's', the input is valid.
    - If the user enter 'q', it must exit the program.
    - If the user enter anything else, it must display 'Invalid input' and ask again for another one.
3. After the user entered a move that is valid, another move is generated _randomly_.
4. They are compared according to the rules of the game.
5. The result is announced.
6. The program is repeated until the user quits the program.
