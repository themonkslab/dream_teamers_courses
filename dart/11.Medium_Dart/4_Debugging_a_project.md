# Debugging a project

When running our program in debugging mode, we can __run our program step by step__, see what value takes each variable, which path it is following and many other things. This way we can make sure that everything is executed as expected by us and if it doesn't, we can find out why.

But before talking specifically about how to do it, it is important to understand how a program runs.

## Control and _Call Stack_

Regardless of the programming language, the __control of a program goes from top to bottom, going as far down as it can__; when that control has reached the bottom, when it finished reading all the _statements_, it has ended. However, the program can go back up using _loops_ and functions but naturally its directionality is downward.

Let's take as an example, our `first_dart_project.dart` with some additions:

![Control flow](4.1_control_flow.png)

The __first step__ would be to __import other files__ in order to be able to use them later. Remember the idea of the control going down? This is why our _imports__ go on top of everything, so that we can use them later in our file.

__Next, we define a function__ called `getUserName` and although here we do it at the beginning __so that the control can call it later__ and because it is a good practice, in Dart it is not strictly necessary since if this function or variable is inside the file, it is enough for Dart to find it. We recommend to do it at the beginning since it facilitates the understanding, especially in more complex cases.

__After that, we have our `main` function which is the one that Dart will call when running the app__ and which has its own control once it is executed. Up to this point, this is what you can see with the big numbers 1, 2 and 3.

When we run the program and the `main` function is called, we can see what happens with the letters:

1. _a1_: reaches the `print` line, but first...
2. _a2_: has to do the calculus (`calculate`) and the flow goes out to another file (`lib/first_dart_project.dart`).
3. _a3_: once you have the result (`42`), it can print.
4. _b1_: is going to declare a new variable but first...
5. _b2_: you have to get the value from `getUserName` to initialize it and...
6. _c_: print it.
7. _d1_: a _loop_ is started,
8. _d2-d3-d4_: which prints the arguments one by one (`[1, 2, 3]`).

__The way our computer _tracks_ or follows all these steps is through something called a _call stack___. Imagine this as a stack of books: first we put the `main`, it is the first one we call or read (`stack: main`). But once in chapter 1, we realize that we have to read the `calculate` book and we put it on top of the stack (`stack: main | calculate`) until we finish reading it. We take it out to print that result (`stack: main`) and when we get to the `username` chapter we realize that we need another book. We grab it (`stack: main | getUserName`), open it, read what we need and come back with the new information to use it (`stack: main`). This way we __stack__ books or in this case __blocks of code as control flows from top to bottom__.

All this was the first step for us to understand the order in which things happen and to be able to debug our program as it should be. And we can do it using two different ways::

## Debugging from VSCode

As you saw when you were learning how to run a project in VSCode, you can run it in _debuggin_ mode by choosing the first option of the _Run_ menu, _Start debuggin_, by pressing `F5` or on the function in question that you want to debug (Exactly! You can debug a specific piece of code that is ready to run, if a `Run|Debug` appears on top of it).

💀 On the one hand, I hope you weren't too anxious to press it and see what happened, but on the other hand, I would've loved it if your curiosity had won! 🤣 Go ahead and try it out and see what happens when you run your _'first_dart_project'_ this way.

The first thing you will notice that VSCode does is open the left panel in the _Run and Debug_ tab, which has the _play_ button and the _bug_ icon. If you hover over it, you will see its name and the keyboard shortcut to call it whenever you want.

🪲 _Side note_: I think I read somewhere that the name _bug_ arises because in one of the first huge computers created, something was failing and they discovered that there was a bug that was causing the failure. 😯

How do we make any of this work? We're going to use _breakpoints_. ___Breakpoints_ are interruption points that stop the execution of our code wherever we place them__ until the programmer decides to move to another point. In the left tab, you'll usually see an area called _BREAKPOINTS_ at the bottom (it's not always there since each part of VSCode can be rearranged). There you can see how __they are added as we place them__. How do we do it? __Next to the line numbers, we click when we see the dim red dot. It turns bright red, and that's it__. When they are placed but deactivated, we will see them in gray:

![Show breakpoints](4.2_show_breakpoints.gif)

We are going to put four _breakpoints_ in lines 7, 9, 11 and 14 and run it. Remember to do it with the `F5` command, in the menu that you already know or in the tab that we just saw. This way we are going to run it with the arguments that we configured in the `launch.json` file. Once running, I am going to explain a little bit with an image:

![Debug mode](4.3_debug_mode.png)

Now that we have a general idea of this mode, we will cover each control as we see examples to understand it.

The first thing is to be able to control how we move in this mode and for that we will use the control bar in the upper right corner:

![Barra de control](4.4_barra_de_control.png)

Let's go in order:

- _First little button that I don't know how it is called_ (😂): On its left, you can see __two columns of three little dots each__ and when you hover over it, it transforms into a hand: it is used to __move that bar__. Note that it only moves one line down and along the entire VSCode.
- _Continue/Pause_ (`F5`): _Continue_ follows with the execution of the program until it finds another _breakpoint_ while in _Pause_ we can inspect the code of the line in which we are stopped and move line by line.
- _Step Over_ (`F10`): executes the next method as if it were a single command, without inspecting it or following its internal methods or functions. For example if we were in a _for loop_, it would NOT enter and execute each iteration.
- _Step Into_ (`F11`): enters the next method and executes it line by line. For example, if we were in a _for loop_, it would enter and execute each iteration.
- _Step Out_ (`Shift + F11`): if we are inside a method, it returns to the context in which it was when this method was called, completing the remaining steps as if it were a single command. For example if we were in the second iteration of a _for loop_, it would exit having first executed all together each remaining iteration but without stopping in each one.
- _Hot Restart_ (`Ctrl + F5`): we will see it in Flutter.
- _Restart_ (`Shift + Cmd/Win + F5`): terminates the execution of the program and restarts it in debug mode.
- _Stop_ (`Shift + F5`): ends the execution.

Good! Let's use these controls and move step by step, learning about each of the areas of VSCode along the way.

1. Click on _Step Into_: You will see that we jump to another file, where there are no available variables, and in the _CALL STACK_, we can see how `calculate` was put on top of `main` although we can return by clicking on it without altering the execution. If we clicked on _Step Into_ the focus would return to `calculate` but now inside the method.
![Step Into](4.5_step_into.gif)
2. (We already clicked in _Step Into_ to test) Click in _Continue_ and you will observe how we return to `main` and the _Call Stack_ is purged. Then, click on _Step Into_ and you will see it enter inside a function (`getUserName`) but it does not jump to another file any longer instead it does it inside the same file. Then click on _Continue_ and it jumps to the next _breakpoint_ already with the result of the variable that we can observe by hovering above or in the _VARIABLES_ sector.
![getUserName](4.6_get_user_name.gif)
3. Once again click on _Continue_ and so on until the end: It enters directly to the first iteration of the loop and you can see which is the argument by placing it on top or in the _VARIABLES_ sector and how they are printed, until it reaches the end of the execution, being this marked by the console as _Exited_.
![loop](4.7_loop.gif)

You have debugged your first program! The idea is that __from now on, every time you run a program you are writing, use this mechanism__ to follow its path. In this way you will not only strengthen the bases by absorbing the _flow_ in each execution but you will have security of everything that happens and __you will have trained the main tool to discover bugs of any kind__.

## Debugging from the DevTools

I think I've thrown enough information at you and I'm going to wait for the right moment where we need them and there, I'll tell you how to do it! 😃
