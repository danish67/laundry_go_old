void main(List<String> args) {
  // in dart function inside a function is allow.
  // or we can declare functin outside of another function

  sum(int a, int b, int c) {
    return a + b + c;
  }

  print(sum(10, 20, 30));
  // void fullName(String fname, String lname, [String? midname]) {}
}
