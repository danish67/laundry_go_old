import 'dart:io';

void main(List<String> args) {
  var sum = 0;
  print("Enter the number");
  var num = stdin.readLineSync();
  var no1 = int.parse(num!);
  for (var i = 0; i <= no1; i++) {
    sum = sum + i;
  }
  print("The sum of $no1 is $sum");
}
