# Creating and running a project

So far, we have been working almost all the time with Dartpad except in small circumstances. The time has come to make the leap: we are going to work almost entirely with VSCode from now on, leaving Dartpad for small experiments.

There, in VSCode, we have created Dart files and worked on them. The time has also come to expand a bit through projects and to create them, we can do it in two ways: the terminal and VSCode. Let's start with the most rocking one! 🤘

## Create a project

We already know the `dart` command and if you enter it in your terminal, you will see that one of its commands is `create`. If you then enter __`dart create`__ you will see that we can only use it to ask for help (`-h`) or __to use a _template_ which is like a model to create our project__.

We are going to use the first of the _templates_ to __create a command line application__. So, we enter: `dart create -t console first_dart_project` and hit enter. Dart is creating the project for us! To enter. 💀 You now have all the elements to open an instance inside that folder from there in VSCode! Give it a try!

Have you? It was simply to enter that folder using `cd first_dart project` (remember that if you enter the first characters of the directory name and then the `tab` key, it autocompletes them) and once inside the folder `code .` (being `.` the directory where we are).

Super! You are already inside your first project! 💪

How could we __do it from VSCode__? Inside VSCode you enter the key combination `cmd/ctrl + shift + p` and there you first type `dart`. It will list everything that VSCode can do with this command with 'New Project' being one of those options. By clicking or pressing `enter` there, it will then ask you to select the type of project. As we want to create the same as what we did in the terminal, select 'Console application', then the directory where you want to create it and finally the name.

That's it! Now you know how to create a project both ways! Ah! 💀 A little task: go back and create another project from VSCode and watch what happens in the bottom bar of VSCode when you finish entering the project name and hit enter.

Did you see anything? VSCode runs also in its own terminal, the command `dart create -t console <new_name>`.

![VSCode corriendo el comando dart create](3.1_vscode_status_bar.gif)

## Running a project

We'll see how each project we create is structured but now let's concentrate on how to run the project we just created.

As you already know, Dart needs a `main` function that is the entry point of our application. This function is located inside the `bin` folder and inside the file with the same name of the project we have just created.

Also, if you look at this function, you can see that it calls another one using an `import` to which it adds the word `as`, which makes that the whole file is called with the name that it assigns to it, in this case `first_dart_project`.

In addition there is another function `calculate` which is located inside a file again with the same name as the project but in the `lib` folder.

![Main function](./3.2_main_function.png)

Now that we have a minimal idea of where our main functions are, I can tell you that we can run our program from two places. Let's start with the terminal.

### Running our program from the terminal

If you enter the `dart` command, you will see that one of the last available commands is the `run` command. If you enter `dart run` while inside the project folder, Dart automatically knows which file contains your `main` and in which folder it is so it runs your program without any problems. 💀 Go and see what happens if you move that file inside the `bin` folder to another location?

When we create a console project by _template_, it is created with a certain structure (which we respect and follow as a best practice), so Dart knows where everything is located. If we change files from one place to another, it cannot run our program with the `run` command just like that. However, if we provide it with the _path_ or precise location of our file after `dart run` (`dart run ./location_of_our_file/your_file_name.dart`), it will also run it.

However, what happens if we modify the main function a bit to use its arguments? Something like this:

```dart
import 'package:first_dart_project/first_dart_project.dart'
    as first_dart_project;

void main(List<String> arguments) {
  print('Hello world: ${first_dart_project.calculate()}!');
  for (var argument in arguments) {
    print(argument);
  }
}
```

We will just go through the arguments received from the command line and print them one by one.

💀 Let's try to run `dart run 1 2 3`. 😯 It tells us _Could not find package `1` or file `1`_ and this is because after `run`, Dart is expecting first arguments to the `run` command and then the name of a file that can receive its own arguments. You can see this if you run `dart run -h` to ask for help:

![Dart run help](./3.3_run_help.png)

And how would you do then, according to such help, to introduce arguments? 💀 Take a little time to try it out!

Have you tried? You have to enter the _path_ of the file and then the arguments: `dart run ./bin/first_dart_project.dart 1 2 3`.

### Running our program from VSCode

If you look at the VSCode menus, you will find one of them under the word _Run_. If you look at it, you will find an option that says _Run Without Debuggin_ and to its right the shortcut that you can use to make it faster; it is very good idea to memorize these combinations. This option is the one that is in charge of running our code:

![Menú Run](./3.4_run_menu.png)

Again, you saw that it runs perfectly as long as we are inside the same file. But what happens if we try to run it from somewhere else? VSCode will create a file called `launch.json`, inside a `.vscode` folder. Let's go by pieces:

This file is used to configure how we want to launch or run our application.

Then, we see that it is inside a directory in which its name begins with a `.`. This indicates that this directory is hidden and we can only see it in VSCode but if in its directory we run the `ls` command, we will not see it unless we add the `--all` option.

You will notice that this file is a `Map` or something like that (this is the way `json` files are structured). Inside the _key_ `"configurations"`, we have a list of other `Maps`. If we add the command/key `"program"` to that object and assign the value representing the _path_ of our file to that _key_, no matter where we are, VSCode will now run the file for us:

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "first_dart_project",
            "cwd": "dart/11.Dart_medio/first_dart_project",
            "request": "launch",
            "type": "dart",
            "program": "bin/first_dart_project.dart"
        }
    ]
}
```

Pay attention that there is a _key_ called `"cwd"` and it refers to the _current working directy_. In my case, it will be different from yours (you may not even have it), since you are working on a new project, not like me that I am doing it as part of the course examples.

Now, how do we add up our arguments? Easy! We add another _key_ called `"args"` and as value, a list of the arguments we want:

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "first_dart_project",
            "cwd": "dart/11.Dart_medio/first_dart_project",
            "request": "launch",
            "type": "dart",
            "program": "bin/first_dart_project.dart",
            "args": [
                "1",
                "2",
                "3"
            ]
        }
    ]
}
```

Voilà! you can now run your first project from VSCode too! In fact, you can do it super fast if you go to your `first_dart_project.dart` file, locate the `main` and click right above where it says: _Run_. That's the quick version! 😂

And once you have seen the quick version of _Run_, you will have seen next to it, another one called _Debugg_. And that? Next chapter!
