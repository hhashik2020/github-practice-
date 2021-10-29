

void main(){
  var dog = Dog();
  print('');
  
  var dog2= Dog.childNamedConstructor();
  print('');
  
  var dog3 = Dog.namedConstructor();
  print('');
  
  var dog4 = Cat();
  print(dog4.animal());
  
  var dog5 = Cat();
  print(dog5.dog());
  
  
}




class Animal {
  
  animal(){
    print('Welcome to the Animal House');
  }
  
  //constructor
  Animal (){
    print('This is Animal Constructor');
  }
  Animal.parentNamedConstructor(){
    print('This is Animal Parent constructor');
  }
  Animal.namedConstructor(){
    print('This is Animal Named Construcor');
  }
  
  
 
}


class Dog extends Animal {
  
  dog(){
    print('');
  }
  
  //construtctor
  Dog ():super(){
    print('This is Dog Constructor');
  }
  Dog.childNamedConstructor(){
    print('This is Dog Child Named Constructor');
  }
  Dog.namedConstructor():super.namedConstructor(){
    print('This is Dog Named Construcor');
  }
}

class Cat implements Animal,Dog{
  @override
  animal(){
    print('Welcome to the cat House');
  }
  @override
  dog(){
    print('My pet bread is Pershian Cat');
  }
}















// if we passing paramiter to the main class then we need to pass paramiter to the super;
//if we ChildClass to the child constructor then we need to pass paramiter to the main function;
