# The terminal

We have seen very superficially how to create a project from VSCode. Or to be more honest, we have seen how to create some `.dart` files but not a project.

To do this we can either turn to VSCode or spend a short time getting to know the command line and let us feel like real hackers, ready to change the earth with our fingers! 🤣

## Introduction

Before you say you're too scared to even look at it on someone else's computer, it's a good time to get friendly and use it gradually.

We are used to dealing with __menus, windows and mouse__, which would be properly defined as the __graphic interface__. However, __there is a little window in which we can give instructions to almost any program just by using a simple text line__ or command. __The terminal__ or _command line interface (CLI)_ is that method.

To access it, you can press `cmd + t` or `ctrl + t` or search for it depending on your operating system.

The first thing you will see, is the _prompt_ and it is the visual aid waiting for a command to be typed in. In my terminal, which is a little bit modified and minimal (😂), you'll see just this: `-> ~ |` but this varies from terminal to terminal:

![Mi mínima terminal](2.1_mi_minimal_terminal.png)

A few lines ago, we mentioned that one inputs commands to the terminal. As with any language __these commands have to be in order__ otherwise the terminal, as with other people, would not understand anything. In a __type command__ the first word indicates the command to be executed and the remaining words are given as options or parameters and arguments of the command: `-> ~ command [ options ] [ arguments ]`.

__Options are different possibilities of how to use the command and we can enter them using `--` before the option, or a single `-` before the abbreviation__ of the option, which can be the first letter or the first two letters. For example we have the command `dart`, which would be a terminal utility for developing in Dart. If we just type `dart`, this is what we get:

![Comando dart](2.2_comando_dart.png)

1. It tells us how to use `dart`: first the `dart` command, then a space and another command or file (and I am going to add right there where you see the '*' a global option) and then another space and arguments if any.
2. The previously mentioned global options where you can ask for help by a command either the main command (`dart --version`) or a subcommand (`dart analyze --help`).
3. The available commands.
4. How to ask for help in a different way, no longer `dart analyze --help` but `dart help analyze`.

Notice that the space here matters a lot! If we want for example to create a directory we would use the command `mkdir` followed by the directory name, but how would you create a directory called `extra directory`? If you type it with spaces (`mkdir extra directory`) it will create two directories, one called `directory` and the other called `extra`.

To achieve this you should wrap it in single or double quotes: `mkdir 'extra directory'`. And since you are creating a lot of directories, to delete them you can use `rm -R [directory_name]`. And why the `-R` option? 💀 You can investigate it yourself using the `man [command]` command, which will bring up the manual for that command! To exit the manual, you can press the `q` key.

Did you research? What the `-R` does is to make the deletion recursive since it is a directory that may contain more files or directories.

On the other hand, you will see when you start doing some research, the words `su` and `sudo`. I didn't tell you before, but __every operating system works with different users with different roles__, which allows us to prevent that __someone__ who shouldn't __do something he/she shouldn't__.

__The most powerful user is called `root`__ and is the one who has all the permissions. If you type `su`, you will be asked for the _password_ to log in as that user. On Mac for example, this user is disabled by default. On the other hand, if you type `sudo` (_Super User DO_), this command gives the current user administrator permissions.

To finish this not so brief introduction, I leave you a list of commands that you may find very useful. Oh and before: if you ever get stuck in the middle of a command or a process, you can use `ctrl + c` to get out of it! Now, the commands:

- `top`: shows a list of the programs in use with their _PID_ or _program id_. It is worth clarifying that an _id_ is an identifier, it applies to millions of situations but it lets you know that an object is specifically that object.
- `killall [program command]`: kills or terminates a program using its command. For example: `killall code`.
- `kill PID`: kills a program using its PID. For example: `kill 4320`.
- `ls <options> <files>`: list the contents of a directory.
- `cp <options> <file> <path>`: copies a file or directory to the specified directory.
- `mv <options> <file> <path>`: moves files and directories from one directory to another, or renames a file or directory.
- `cat <options> <files>`: displays the contents of the files by standard output.
-`find <path(s)> <search condition(s)> <actions>`: searches for files by browsing directory trees specified by the paths, evaluating from left to right the search conditions. In addition, you can specify actions on the results obtained.
-`pwd <options>`: Displays the name of the directory in which you are located (_print working directory_).

You may find that many of these commands don't work in Windows, but don't let that stop you from exploring, testing and doing it especially in front of unknowledgeable people to make yourself look like a keyboard superhero! 🦸‍♂️
