\titlepage

## Overview
\tableofcontents


# Introduction

## History

> - Microsoft's answer to Java
> - January 1999: Anders Hejlsberg and his team start working on `Cool` (C-like
	Object Oriented Language)
> - July 2000: .NET and C# are announced

## Design

### Anders Hejlsberg
- Not a Java clone and is much closer to C++

## Name

> - `C`
> - `C++`
> - `C++++`
> - `C#`

## Characteristics

> - Strongly typed
> - Imperative, procedural
> - Functionnal since C# 3.0
> - Object oriented
> - Object oriented
> - OBJECT ORIENTED

## Classic compilation

![Classic compilation](img/compilation.png)

## C# compilation

> - Use of an intermediate language
> - MSIL (MicroSoft Intermediate Language)
> - JIT (Just In Time) compiler

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
	string GetName();
	void Work();
	void Sleep();
	bool IsTired();
	[...]
	void GetNaked();
}
```

## Create objects

> - How do I create an object ?
	> - Use the keyword *new*
	> - *new* is used with class constructor

	## Call an object's method

	```cs

	public void main()
{
	Meven meven = new Meven();

	// Then you can call meven's methods
	if (meven.IsTired())
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
	string GetName();
	void Work();
	void Sleep();
	[...]
}

```

## Example

```cs

public class Human
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

	human.GetName(); // Returns "Martin"
	shepard.GetName(); // Returns "Shepard"
}

```
# Questions ?

## Static fields in a class

> - A static field is common to every instance of a class
> - Cannot be accessed from instance
> - Cannot be accessed with *this*

## Static Class

> - Every field is static
> - Cannot be instanciated
> - Fields are accessed with full name

## Example

```cs

class Shepard
{
	public static int count = 0;
	public Shepard()
	{
		count++;
	}

	// Fields ...
}

```

## Example

```cs

public void main()
{
	Shepard s1 = new Shepard();
	Shepard s2 = new Shepard();
	Shepard.count; // count = 2
}

```

# Questions ?

## Introduction to access modifiers

```cs

class Martin
{
	// Fields ...
	public string GetName();
	public int GetAge();
	private void Backflip();
}

```

# Visibility

## `private` vs `public`

> - `private`: only I can see it and modify it
> - `public`: everyone can see it and modify it

## `private` vs `public`

```cs

class Pirate
{
	private int treasure;
	public int age;
	public string name;
}
```

## Why ?

> - Clean code
> - Safe code

## Why ?

```cs

class Date
{
	private int day;
	private int month;
	private int year;

	public Date(int day, int month, int year)
	{
		//Check validity...
	}
}
```

## Inheritence

> - Let's go back to our pirate

```cs
class Human
{
	public int age;
	public string name;
	
	public Human(string name);
}
```

## Inheritence

```cs
class Pirate: Human
{
	private int treasure;

	public Pirate(int name): base(name)
	{
		//...
	}
}
```

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
> - Namespaces may nest, sub-namespaces are accessed using `.`.
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

> - Define operations between created types.
> - Allow to use the simple symbols `+`, `-`, `*`, etc.

## Example

```cs
class Vector2
{
	private int x;
	private int y;
	public Vector2(int x, int y)
	{
		this.x = x;
		this.y = y;
	}

	public static Vector2 operator +(Vector2 u, Vector2 v)
	{
		return new Vector2 (u.x + v.x, u.y + v.y);
	}
}
```

## Example

```cs
var a = new Vector2(42, 42);
var ab = new Vector2(13, 69);

var b = a + ab;
// b.x = 55 && b.y = 111
```

## Generics

> - Define type-safe data structures.
> - Avoid duplication of code.

## Example - stack

```cs
public class Stack<T>
{
	private T val;
	private Stack<T> next;

	/* equivalent to Push */
	public Stack<T>(T val, Stack<T> stack)
	{
		this.val = val;
		this.next = stack;
	}

	// ...
	```

	## Example - stack

	```cs
	// ...

	public T Peek()
	{
		return val;
	}

	public Stack<T> Pop()
	{
		return next;
	}
}
```

## Usage

```cs
Stack<int> stack = null;

for (int i = 0; i < 7; ++i)
	stack = new Stack<int>(i, stack);
// stack = 6 -> 5 -> 4 -> 3 -> 2 -> 1 -> 0 -> null

int four = stack.Pop().Pop().Peek();

Stack<int> tail = stack.Pop();
```

## Usage 2

```cs
Stack<double> stack = null;

for (double i = 0.0; i < 7.0; ++i)
	stack = new Stack<double>(i, stack);
// stack = 6. -> 5. -> 4. -> 3. -> 2. -> 1. -> 0. -> null

double four = stack.Pop().Pop().Peek();

Stack<double> tail = stack.Pop();
```

## Functionnal programming

> - Function types (create objects which are functions)
> - Function values (assign functions or methods)
> - Function arithmetic (add or substract functions)
> - LINQ (can replace loops)

## Func, Predicate, Action

```cs
Func<double, double> f = Math.Exp;
double e = f(1);

/* Func<string, void> act ... */
Action<string> act = Console.WriteLine;

/* Func<string, string, bool> p ... */
Predicate<string, string> p = String.Equals;
string str = "Test.";

if (p(str, "Test."))
	act("Votai");
```

## delegate, lambdas, anonymous functions

```cs
Func<int, int> MultAnswer
= delegate(int x) { return 42 * n; };

// is equivalent to

Func<int, int> MultAnswer = n => 42 * n;

int answer = MultAnswer(1);
// answer = 42
```

## Function arithmetic

```cs
Action<string> hello =
	str => Console.WriteLine("Hello {0}!", str);

Action<string> bye =
	str => Console.WriteLine("Bye {0}…", str);

Action<string> greetings = hello + bye;

greetings("Hazriel");
// Hello Hazriel!
// Bye Hazriel…

(greetings - hello)("Shepard");
// Bye Shepard…
```

# Questions?
