void main(List<String> args) {
  // set

  // IT IS SAME AS IN PYTHON,

  //  HOW TO DECLARE A SET IN DART
  Set<int> s1 = {1, 2, 3, 4, 5};
  print(s1);

  // WE CAN NOT ACCESS THE ELEMETNS BY ITS INDEX.

  var evenNoSet = {2, 4, 6, 8, 10};
  var oddNoSet = <int>{1, 3, 5, 7, 9};
  var perfectsquare = {1, 4, 9, 16};
  // FIND THE NUMBERS WHICH ARE ODD AND PERFECT SQUARE
  print(oddNoSet.intersection(perfectsquare));

  // union()
  print(evenNoSet.union(oddNoSet));
}
