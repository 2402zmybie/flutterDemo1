/**
 * Set是没有顺序且不能重复的集合, 所以不能通过索引去获取数据
 * 用它最主要的功能就是去除数组重复内容
*/
main() {
  var s = Set();
  s.add("香蕉");
  s.add(1);
  s.add(1);
  print(s); // {香蕉, 1}
  print(s.toList());  //[香蕉, 1]


  //集合去重
  List myList = ["香蕉","西瓜","香蕉","西红柿"];
//  var s1 = Set();
//  s1.addAll(myList);
//  print(s1.toList());
  print(myList.toSet().toList());
}