void main(List<String> args) {
  var m1 = 10;
  var m2 = 20;
  var avg = (m1 + m2) / 2;
  print(avg);

  // ======= LIST =======

  //  HOW TO DECLARE A LIST.
  List<int> marks = [10, 20, 30, 40, 50];

  // HOW TO ACCESS THE ELEMETNS OF LIST?
  print(marks[0]);

  // HOW TO ADD ELEMENTS IN A LIST?
  marks.add(60);
  print(marks);

  // HOW TO REMOVE ANY ELEMENT FORM LIST?
  marks.remove(10);
  print(marks);

  // HOW TO REMOVE ANY ELEMENT AT SPECIFIC INDEX?
  marks.removeAt(1);
  print(marks);

  marks.addAll([10, 20]);
  print(marks);

  marks.insert(1, 70);
  print(marks);

  // PRINTING ALL ELEMENTS OF LIST USING LOOP.
  for (var i = 0; i < marks.length; i++) {
    print(marks[i]);
  }

  // another way
  print("\n");
  for (var ele in marks) {
    print(ele);
  }

  // HOW TO CHECK WHETHER AN ELEMENT IS PRESENT IN LIST OR NOT?
  var con20 = marks.contains(20);
  var con200 = marks.contains(200);
  print(con20);
  print(con200);

  marks.forEach((element) {
    print(element);
  });

  //
  List<double> deci = [];
  marks.forEach((element) {
    deci.add(element + 0.5);
  });
  print(deci);
  // another way using a function.
  var doubl = marks.map((e) => e + 0.9).toList();
  print(doubl);
  // WE USE .TOLIST() FUNCTION TO CONVERT THE ITERABLE TYPE TO LIST TYPE.

  var mixList = [1, 2.5, 'a', true];
  print(mixList);
  //  OBJECT : CAN STORE INT,DOUBLE,STRING,LIST
  // THE mixList IS OF TYPE OBJECT

  dynamic a = 1;
  print(a);
  a = "danish";
  print(a);
  // dynamic is used to store any type of value in a variable means we can add int type,string type,boolean type.
  // WE DON'T USE DYNAMIC TYPE GENERALLY.
}
