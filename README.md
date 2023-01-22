# Simple app to demonstrate the usage and implementation of the Singleton Design Pattern

## Ensure class only has one instance and provides a global point of access to it.

## Base State Class
- A base class for the abstraction of example's state which contains an initial text value,
- a single text property and methods to operate it.

## State By Definition Class
- This class is a Singleton which is implemented by definition.

## Example State Class
- This class is a Singleton which is implemented using the Dart language capabilities.

## Example State Without Singleton Class
- This class is implemented without using a Singleton design pattern.



- SingletonExample Screen uses all three different implementations of the state. Singleton implementations
(StateByDefinition and ExampleState) create a new state object only on the first creation
of the SingletonExample widget, but the ExampleStateWithoutSingleton instance is created on each
creation of the SingletonExample widget.