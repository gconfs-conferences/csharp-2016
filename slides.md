\titlepage

## Overview
\tableofcontents


# Introduction

## History

## Characteristics

> - Strongly typed
> - Imperative, procedural
> - Object oriented
> - Object oriented
> - OBJECT ORIENTED

## Classic compilation

![Classic compilation](img/compilation.png)

## C# compilation

> - Use of an intermediate language
> - MSIL (MicroSoft Intermediate Language)
> - JIT (Just In Time) compiler
> - Slower than C++
> - Faster than Java

## C# compilation

![C# compilation](img/csharp-compilation.png)

## .NET

shepard

# Syntax

## Types

shepard


# Questions?


# Object Oriented Programming

## What is OOP ?

> - New way of thinking
> - Existence of patterns
> - Create objects from these patterns
> - Make these objects interact

## A class

```cs
class Window
{
  // Fields
  int width;
  int height;
  float opacity;
  bool hasShutter;
  [...]
}
```

## A class with methods

```cs
class Meven
{
  int height; // Pretty small
  Color eyesColor;

  // Methods
  public string getName();
  public void Work();
  public void Sleep();
  public bool isTired();
  [...]
  private void getNaked();
}
```

## Create objects

> - How do I create an object ?
> - Use the keyword `new`
> - `new` is used with class constructor

## Call an object's method

```cs

public void main()
{
  Meven meven = new Meven();

  // Then you can call meven's methods
  if (meven.isTired())
    meven.Sleep();
  else
    meven.Work();
}

```

## Constructor

> - What is a class constructor ?
> - Instanciate a new object
> - Pass parameters along with it
> - You can have several constructors per class
> - Default constructor given if not specified


## Example

```cs

class Human
{
  // Fields
  string name;
  int height;
  int age;
  [...]

  // Methods
  public string getName();
  public void Work();
  public void Sleep();
  [...]
}

```

## Example

```cs

class Human
{
  public Human()
  {
    // Initialize fields the way you want
    this.name = "Martin";
    this.age = 40;
  }

  public Human(int age, string name)
  {
    this.name = name;
    this.age = age;
  }

  // Fields and methods
  [...]
}

```

## Example

```cs

public void main()
{
  Human human = new Human();
  Human shepard = new Human(20, "Shepard");

  human.getName(); // Returns "Martin"
  shepard.getName(); // Returns "Shepard"
}

```

## Visibility

reaper

## Inheritence

reaper

# Questions?

# Advanced C\#

## Useful keywords

> - `var`
> - `typeof`
> - and more… (`explicit`, `yield`, `try`, `unsafe`, etc.)

## var

```cs
MyClassWithABigName obj = new MyClassWithABigName();

// is equivalent to

var obj = new MyClassWithABigName();
```


## initialize with null

```cs
Acdc shepard = new Acdc();
shepard.Teach();
shepard = null;

var hazriel = new Acdc();
hazriel.Teach();
hazriel = null;

var reaper = null;
// Compilation failed
```

## typeof

> - Get the `System.Type` of a type
> - Useful when used with the `GetType` method

## typeof

```cs
Human[] people = new Human[42];
[...] // set content of people

foreach (var person in people)
{
  Type type = person.GetType();
  if (type.Equals(typeof (Acdc)))
    person.Teach();
  else
    person.Sleep();
}
```


## Namespaces

> - Scopes where a set of related classes is implemented.
> - Namespaces may nest, sub-namespaces are accessed using `'.'`.
> - Namespaces use visibility. One can declared a class as private (only
    accessible in the current namespace) or public (accessible from anywhere).

## Usefulness of namespaces

```cs
System.Speech.Synthesis.SpeechSynthesizer synthesizer
  = new System.Speech.Synthesis.SpeechSynthesizer();

synthesizer.Speak("I am only available on Windows.");

[...] // other stuff using long identifier
```

## Use a namespace

```cs
using System.Speech.Synthesis.SpeechSynthesizer;

SpeechSynthesizer synthesizer2 = new SpeechSynthesizer();

synthesizer2.Speak("I was declared in a simplier way.");
```

## Operators overloading

mevouc

## Genericity

mevouc

## Functionnal programming

> - Function types
> - Function values
> - Function arithmetic
> - LINQ

# Questions?
