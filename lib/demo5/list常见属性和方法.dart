/**
 * 属性: length, isEmpty, isNotEmpty, reversed
 * 方法:
 */
main() {
  List myList = ['香蕉','苹果','西瓜'];
  print(myList.isEmpty);
  List myNewList = myList.reversed.toList();
  print(myNewList);

  print(myList.indexOf("平果")); // 查找不到返回-1

  bool delete = myList.remove("西瓜");
  if(delete) {
    //删除成功
    print(myList);
  }

  print("----------------");

  //fillRange 修改
  var myList1 = ["榴莲","芒果","奶茶"];
  myList1.fillRange(myList1.indexOf("奶茶"), myList1.indexOf("奶茶") + 1, "修改成一个水果名");
  print(myList1);
  print("---------------");

  //insert insertAll  插入多个
  var myList2 = ["榴莲","芒果","奶茶"];
  myList2.insertAll(1, ["榴莲1","榴莲2"]);
  print(myList2);
  print("-----------------");

  //join 转换成字符串连接
  var myList3 = ["榴莲","芒果","奶茶"];
  var str = myList3.join("-");
  if(str is String) {
    print(str);
  }
  //split 字符串转换为集合
  var splitList = str.split("-");
  print(splitList);

  //forEach map where any every





}