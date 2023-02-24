# Project components

Let's use our brand new `first_dart_project` as a basis to understand what a project is made of:

![Estructura de un proyecto](5.1_estructura_de_proyecto.png)

__Note about .lock:__ remember that the files starting with a dot were hidden files? That screenshot is made in my VSCode that has an extension installed that hides them together with their associated file, showing the one that is not hidden; if you want to make it visible, you have to click on the little arrow to the left of the name. In the screenshot, you can see that it is being displayed and the little arrow is pointing down.

__Note about _linting_:__ is the process by which our code is analyzed and, following a series of rules, determines if it is properly written. For example, we could put a rule that verifies that all the _trailing commas_ are set and if we miss one, it warns us or even, depending on the way we configure our editor, it adds them by itself when saving the file.

## Packages

So far we always talk about having created the first Dart project but actually, being specific, __there is no such thing called a project in Dart but rather, what we really have are _Dart packages_.

We can find a huge amount of curated, ranked and commented packages in [pub.dev](https://pub.dev/),__ which is the official repository for _packages_ of both Dart and Flutter.

What would be the point of gathering them all in one place? Let's imagine that we have to write an application to search a set of data on a server, then transform it from its original JSON format to classes that we have in our app and finally store it in a database.

Now imagine if we had to write all that in Dart? We would go crazy or at the very least, we would have consumed enormous amounts of time on it.
Luckily there is already a __great collection of packages made and maintained by a beautiful group of people (the community) that take care of doing these things and many more, saving us unthinkable amounts of time and resources,__ all gathered in the magical [pub.dev](https://pub.dev/).

So, a package may depend on others and vice versa. __A package that is useful to the ecosystem and is uploaded to _pub.dev_, is called a _library_,__ while __a package that is specific to an application is called an _application package_.__ 🙄

So how Dart manages these packages? It uses a _package manager_ that we can see when we type in the terminal the command `dart`:

![Gestor de paquetes](5.2_gestor_de_paquetes.png)

So, when we create a package, it takes care of fetching all the packages on which our package depends and it does this by checking the `pubspec.yaml` file and using the `dart pub get` command.

In this `pubspec.yaml` is mandatory to set the name of our package and the _constraints_ or the minimum and maximum versions of the _sdk_ we are going to depend on, which would be the same as saying the minimum and maximum versions of Dart. Notice that in our file they are put in the following way: `'>=2.18.6 <3.0.0'`, allowing us to use version 2.18.6 or higher but not more than 3.0.0.0 being this one not included.

Finally we will have dependencies for the execution of our program and dependencies for when we run it in development mode:

```yaml
name: first_dart_project
description: A sample command-line application.
version: 1.0.0
# homepage: https://www.example.com

environment:
  sdk: '>=2.18.6 <3.0.0'

# dependencies:
#   path: ^1.8.0

dev_dependencies:
  lints: ^2.0.0
  test: ^1.16.0

```

__Note__: be aware that the spaces and indentation in this file are strictly respected and if we have one too many or one too few, it will cause a failure.

When `dart pub get` is run or we run it, other files are generated like the one we already saw `pubspec.lock` and the `package_config.json` (in the `.dart_tool` folder). These files specify the packages on which not only our package depends directly but also indirectly, referring to the packages on which the packages we depend on depend! 🥴 Let me try again and I hope this time easier: the packages on which we depend explicitly and the packages on which they depend.

We can see in the following screenshot those files and at the end of `package_config.json` how our own package is found, being this the final proof to support that there are no projects but only packages! 🤣

![pubspec.yaml y otros](5.3_pubspec.yaml.gif)

Now that we understand a little more about what packages are and we have seen that there are others who do a lot of work that we will gladly take advantage of, how do they make public what they want us to see and what we are going to use?

## Libraries

The _libraries_ are the public parts of a package and in our project they would represent the `/lib` folder, although these libraries require a specific way to organize their folders and files, something that we'll see soon. However, we might be able to help ourselves to write better code for these libraries using a little bit of support...

## Linting

Remember the _static analyzer_ that had the function of __analyzing in real time any potential error in our code__? And how does it do that? Basically it __follows a set of rules__ or _lint rules_ and this process is called _linting_ (while the original term 'lint' comes from a Unix utility I personally believe it was created with the thought of getting all the lint out that is messing the thing up 🤣).

It would be very interesting if we could see what these rules are or even add some of our own! If only...

Notice that in your `pubspec.yaml` file, inside `dev_dependencies:` the first one refers to a library called `lints` (in its `^2.0.0` version). This library is the one that contains the rules and we can see it inside the VSCode itself: look for the DEPENDENCIES panel, there the `/lib` folder and then to the `recommended.yaml` file. You will be able to see each of the rules that are build on top of the essential ones arranged in the `core.yaml` file:

![Lint rules](5.4_lint_rules.gif)

Can we configure this process any further? Yes, in the `analysis_options.yaml` file:

```yaml
# First, we include from the `package:lints` package, the recommended.
# If we want something less strict, we can use the core.yaml and add the ones we want.
include: package:lints/recommended.yaml

# Here we can specify other extra rules such as using trailing commas.
linter:
  rules:
    require_trailing_commas: true

# Here we can exclude certain files from the analysis
analyzer:
  exclude:
    - path/to/excluded/files/**

# For more info, it send us to:
# https://dart.dev/go/core-lints
# https://dart.dev/guides/language/analysis-options
```

In the advanced section of this course we will see how to rely on a stricter linting as a convention but for now I am satisfied that you know how to set it up so that you can gradually introduce best practices.

And speaking of which, with you, the queen of best practices!

## Tests

One of the most omitted, neglected and feared issues when one begins to study programming. I say this unfortunately because I think it is __one of the pillars of the development process__, something that should be integrated to our daily process because it __helps us to write more maintainable and secure code, accelerate the development process and allow its scalability.__

The tests can be found inside the folder with the same name and if we go to our example, we can see a test written to make sure that the `calculate` function gives us the correct result. This type of test is called _unit test_ and we will see very soon what it means.

We can run them from

- the terminal with the `dart test` command inside the package folder.
- from VSCode, in the 'Testing' tab and clicking on the 'Testing' icon
- from the same function inside the file by clicking on 'Run'.

![Running tests](5.5_running_tests.gif)
