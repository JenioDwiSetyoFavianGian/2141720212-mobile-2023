void main() {

  //langkah 1
  var list = [1, 2, 3];
  assert(list.length == 3); // true
  assert(list[1] == 2); //true
  print(list.length); // 3
  print(list[1]); //2

  list[1] = 1; 
  assert(list[1] == 1);
  print(list[1]); //1

  // langkah 3
  // final List finalList = List.filled(5,null);
  // finalList[1] = 'Jenio Dwi Setyo Favian Gian';
  // finalList[2] = '2141720212';
  // print('\n');
  // print(finalList.length);
  // print(finalList);

  // final List list = List.filled(5,null); 
  // list[1] = "Jenio Dwi Setyo Favian Gian";
  // list[2] = "2141720212";
  // assert(list.length == 5);
  // assert(list[1] == "Jenio Dwi Setyo Favian Gian");
  // assert(list[2] == "2141720212");
  // print(list.length);
  // print(list);
}