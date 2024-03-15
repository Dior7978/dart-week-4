import 'dart:io';

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Generic animal sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print('Woof!');
  }
}

abstract class CanEat {
  void eat();
}

class Cat extends Animal implements CanEat {
  Cat(String name, int age) : super(name, age);

  @override
  void eat() {
    print('$name is eating!');
  }
}


Future<String> readFile(String path) async {
  try {
    final file = await File(path).readAsString();
    return file;
  } catch (error) {
    print('Error reading file: $error');
    return '';
  }
}

Future<void> main() async {
  String content = await readFile('data.txt');
  // Parse content and use it to initialize an object...
}


void printNumbers(int start, int end) {
  for (int i = start; i <= end; i++) {
    print(i);
  }
}
