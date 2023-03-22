import 'dart:io';

void main(List<String> args)
// {
//   print("danish");
//   // In this dart \n also applicable.

//   // declaring a variable
//   // int type
//   int length = 10;
//   print(length);
//   var breadth = 5;
//   print(breadth);

//   // float type
//   double cgpa = 9.67;
//   print(cgpa);

//   // string type.
//   String name = "danish";
//   var name1 = 'danish';
//   print(name);
//   print(name1);

//   // boolean type
//   bool var1 = true;
//   print(var1);

//   // type casting
//   double no = 12.36;
//   print(no.toInt());

//   var num = "1";
//   var i = int.parse(num);
//   print(i);

//   // comparision operation
//   var isGret = 4 > 2;
//   print(isGret);

//   int age = 20;
//   if (age > 18) {
//     print("You are eligible");
//   } else {
//     print("You are not eligible");
//   }
// }
// ------------------------------
// {
//   // if - else if statemnt.
//   var marks = 200;
//   if (marks > 80) {
//     print("A Grade");
//   } else if (marks > 60) {
//     print("B Grade");
//   }
//   else
//     print("C Grade");
// }
// ------------------------------
// {
//   var day = stdin.readLineSync()?.toLowerCase();
//   // ?.toLowerCase() will convert the input into lower case.

//   switch (day) {
//     case "monday":
//       print("You entered  monday");
//       break;

//     default:
//       print("You do not entered monday");
//   }
// }
// ------------------------------

// {
//   // Ternary operator.
//   var no1 = 10;
//   var no2 = 20;
//   var max;
//   // first way
//   max = no1 > no2 ? no1 : no2;
//   print(max);
//   // second way.
//   no1 > no2 ? print(no1) : print(no2);
// }

// ------------------------------------
{
  print("Enter a number::");
  var no = stdin.readLineSync();
  print(no);
}
