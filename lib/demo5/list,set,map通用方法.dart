/**
    forEach
    map
    where
    any
    every
    */
void main() {
  List myList = ["香蕉","苹果","西瓜"];

  //for in 遍历
  for(var item in myList) {
    print(item);
  }
  print("----------------------");
  //forEach遍历 : 循环List 只能传入一个值
  myList.forEach((item){
    print(item);
  });

  //map 对原数组进行处理 返回新数组
  List myList2 = [1,2,5];
  var newList = myList2.map((value) {
    return value * 2;
  });
  print(newList.toList());
  //where :删选符合条件的集合
  List myList3 = [1,3,4,5,6];
  var newList3 = myList3.where((value) {
    return value >= 5;
  });
  print(newList3.toList());

  //any: 只要集合中有一个满足条件的元素就返回true
  List myList4 = [1,3,4,5,6];
  var bool = myList4.any((value) {
    return value > 5;
  });
  print(bool);

  //every: 集合中每一个满足条件 就返回true
  List myList5 = [1,3,4,5,6];
  var bool2 = myList5.every((value) {
    return value >= 3;
  });
  print(bool2);

  //以上方法 在Set集合中同样适用

  print("----------------------");
  //map forEach
  Map map1 = new Map();
  map1.addAll({
    "name":"老何",
    "sex":"male"
  });
  map1.forEach((key,value) {
    print("$key ---- $value");
  });

}