void main(List<String> args) {
  // MAP IN DART

  // HOW TO DECLARE MAP ?
  Map<int, String> m1 = {10: 'ten', 20: 'twenty', 30: 'thirty'};
  print(m1);

  // HOW TO ACCESS ANY ELEMETN
  print(m1[10]); // here 10is key
  print(m1[30]); // here 30 is key
  print(m1[3]); // here 30 is key

  m1[10] = "TEN";
  print(m1[10]); // here 10is key
  print(m1);

  print(m1.containsKey(10));
  m1.putIfAbsent(40, () => 'fourty');
  print(m1);

  // printing all keys
  print(m1.keys);
  print(m1.values);
  print(m1.values);

  var keys = m1.keys.toList();
  var key = keys[m1.values.toList().indexOf('fourty')];
  print('key of fourty is $key');
  print(m1.map((key, value) => MapEntry(key * 2, value + " " + "Heloo")));

  // HOW TO REMOVE ANY VALUE
  m1.remove(10);
  print(m1);
}
