void main(List<String> args) {
  var p1 = Person('danish', 18, 'MALE'); // p1 is object of class Person.
  print(p1);
  print(p1.Introduce());
  print(p1.isAdult());
  var p2 = Person("adnan", 15, 'male');
  print(p2);
  print(p2.Introduce());
  print(p2.isAdult());
}

class Person {
  // Propertise of person
  String name;
  int age;
  String gender;
  // constructor : special method/function which is entry point of class. It is used to initiaize the
  // properties of class. It is called when object is created.
  // Person(String name, int age, String gender){
  // this.name = name;
  // this.age = age;
  // this.gender = gender;
  // }
  Person(this.name, this.age, this.gender) {
    print('person created');
  }
  String Introduce() {
    return "hello,I am ${this.name}.Iam ${this.age} years old.";
  }

  bool isAdult() {
    // if there will be any variable whose name is age then we will use this.age if we want to use value of
    //  global variable age.
    return age > 18;
  }
}
