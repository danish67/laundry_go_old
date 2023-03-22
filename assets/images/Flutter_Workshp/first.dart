void printWish() {
  print("hello");
}

void decorate(Function func) {
  print("======================");
  func();
  print("======================");
}

void main(List<String> args) {
  decorate(printWish);

  // anonymous: a function without name.
  decorate(() {
    print("I am anonymous");
  });

  var anony = (){print("hello anonymous function");};
  print(anony);

}
