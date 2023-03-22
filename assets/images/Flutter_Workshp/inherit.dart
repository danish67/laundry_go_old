void main(List<String> args) {
  var p1 = Person('danish', 18, 'MALE'); // p1 is object of class Person.
  print(p1);
  print(p1.Introduce());
  print(p1.isAdult());
  var p2 = Person("adnan", 15, 'male');
  print(p2);
  print(p2.Introduce());
  print(p2.isAdult());

  Employee e1 = Employee('danish', 18, 'male', 'Engineer', 1, 100000);
  print(e1);
  print(e1.Introduce());
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

// Employee inherits person
class Employee extends Person {
  String job;
  double salary;
  double experience;

  // Properties of Employee: job,salary,experience,name,age,gender.
  // super is parents constructor call
  Employee(String name, int age, String gender, this.job, this.experience,
      this.salary)
      : super(name, age, gender) {
    print('employee created');
  }

  @override
  String Introduce() {
    return "hello,I am ${this.name}.I work as ${job}.";
  }
}
