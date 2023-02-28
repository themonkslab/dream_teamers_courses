# Creating a command line app

The first thing we have to do is to initialize the terminal and there create a directory where you are going to host all your exercises. Here we are going to be creating the exercises inside the folder of each section.

To create a folder in the terminal, we type `mkdir` (_make directory_), a space and the name of the folder. For example `mkdir dart_exercises`.

To enter the folder use the `cd` command, a space and the folder name. You can start by typing the first character of the folder and then the _tab_ key to complete the name if there is only one folder with a name starting with that character. Otherwise, you can continue typing until you find the match and finally _enter_ to enter. In this case it would be: `cd 5.command_line_app`.

There, we type `code .` and that should open a new instance/window of VS Code. If this does not happen, it may be that you have not added VS Code to your path. To do this:

1. Open an instance of VS Code as you would regularly do.
2. Press `shift + cmd/ctrl + p` and type 'shell command' and select the option that says 'Install code command in PATH'.
3. Close VS Code.

From now on, you will be able to open VS Code by typing `code` from your terminal. In our case, as we want to open an instance of VS Code from the directory where we were standing, we write `code` and after the space, a `.`, which refers to the directory where we are.

Once there, we will create our first _file_:

![Creando el archivo](https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/5.2.crear_archivo_1.png)
![Nombrando el archivo](https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/5.3.crear_archivo_2.png)

Once in your brand new first command line program, enter a `print` to say hello to everyone!

```dart
void main() {
    print('Hello world!');
}
```

That's it, we have our first program! Now... how do you run it? ✋ Wait! Did you save it? Because if you didn't save it, you'll get all sorts of strange results! 😂

...

...

...

Now yes? Well, then press the combination `cmd/ctrl + j` and the terminal will appear, otherwise, do the following:

1. Move your cursor to the bottom edge
2. When it changes to an arrow, click and hold
3. Drag up

![Abrir terminal con el cursor](https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/5.4.abrir_terminal_cursor.gif)

Once in the terminal, type `dart` and then the name of your program (remember you can type the first few letters and autocomplete with tab) and when you have it, hit `enter`.

🥳 Yeah! You've written your first command line program!
