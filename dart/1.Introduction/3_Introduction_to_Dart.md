# Introduction to Dart

We are going to give a brief introduction to Dart and then, throughout the course, we will go into more detail.

## 🎯 Why “Dart”?

The word "Dart" was not chosen casually but is directly related to what the Google team was trying to achieve by creating this language. For each aspect, think about the object first and then I will explain its correspondence in the language:

1. __Precision__: the language had to be optimized as much as possible to offer the most advantages with the least amount of resources, making it possible to be used by a greater audience.
2. __Speed__: the language had to be minimalistic and run fast.
3. __Strong__: the language had to be able to support increasingly complex structures but still be easy to maintain.
4. __Modifiable__: the language had to be able to allow the developer to transform what he was creating in a fast way.
5. __Popular__: the language had to be used by many developers and thus ensure its constant growth and evolution.

All of this has been achieved in this wonderful language and through the features that we are going to name now.

## 👮🏽 Type safe

It means that __the only operations that can be performed on the data in the language are those allowed by the data type__.

This means that if the data is of type `X` and that type does not support an `f` method, then the language will not allow us to perform it. That saves us a lot of problems and errors before we even write them!

For example if we have a data that is a number, we cannot apply a method to it that allows us to pass that number to uppercase.
But how does this work?

## ☑️ Checks and sound type system

Through __system checks of two types: _static type check_ before compiling__ the program (before we prepare it to run) __or by _runtime check_ while we are running the program__.

And the previous __by means of a _sound type system___ 😒 What? Basically it means that it will be in charge of __making us aware of the errors__ and although it will not produce sounds it will produce different types of alerts so that we know at all times what we are doing wrong.

But how does it perform these checks? How does it know what type it is?

## 🔍 Type inference

_Type inference_, means that __Dart__ has the ability to understand what type we are talking about, almost, at all times, through its own _static analyzer_.

This means that if we don't say what type of data it is, Dart will try to find the precise data type and if not, during runtime it will assign a dynamic one called, e.g., _dynamic_ although if even there it doesn't find any type, it will assign one of the null type, which is not something we want in most cases and for that, those geniuses at Google added...

## 📢 Sound Null Safety

Because it will warn us with trumpets, we are going to realize the most important premise in this topic and it is that __no data can be null or empty unless we explicitly define it in that way__.

And this is going to be maintained at the moment of executing our program and even before, at the moment of compiling it.

Be aware that this is going to bother you often at first, but it is something that you will gradually internalize, section by section. In fact, there will be in this course a special one for _null safety_.

__When you run into some little problem and can't find your why, think in _null safety___, and everything you know so far and abstain from insulting close relatives; I'm telling you from experience! 🤣

Ah! Before I wanted to prevent your possible family breakups, I mentioned to you that this was also annoying at compiling time. Compi... what?

Compi... what?

## 🚧 Compile

__Compile is to convert the source code we write to platform-specific languages__. In our case (I'm talking about Flutter developers), we have the great advantage of getting the same source code to compile or run on all platforms 🤩: Android, iOS, Mac, Windows, Linux and Web!

Except for web, Dart uses two ways to compile, each used in a different development stage:

### Development stage and JIT or Just in Time Compiler

In the __development stage, where we write the code__ and expect it to be quickly testable, bug proof, metric friendly and easy to test, Dart uses a way of compiling called _JIT_ which refers to __Just in Time__ and means that it compiles only the code it needs and when it needs it.

Furthermore, this same process ensures that it doesn't recompile parts of the code if they haven't changed! A beautiful madness!

### Production stage and AOT or Ahead of Time Compiler

The __production stage is the one where the code is executed, where the user runs it__.  There, we expect our application to start quickly, run fast and be stable but we don't need any of the features we do need when we develop.

For these reasons, __here Dart uses _AOT_ or Ahead of Time Compiler__.

In the case of producing web code, Dart uses similar tools and processes but with different names that we will see further in the future!
