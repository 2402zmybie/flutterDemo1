void main(){

  List list = ["苹果","香蕉","西瓜"];

  //箭头函数 只能写一句代码
  list.forEach((value) => print(value));
  list.forEach((value) => {
    print(value)
  });
  print("------------------");

  /* 需求: 修改下面List里面的数据, 让数组中大于2的值乘以2 */
  List list1 = [4,1,2,3,4];
  var newList1 = list1.map((value) {
    if(value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList1.toList());

  //箭头函数, 实现上面的需求
  var newList11 = list1.map((value) => value > 2 ? value *2 : value);
  print(newList11.toList());   //[8, 1, 2, 6, 8]

  print("------------------");

  /**
   需求: 1 定义一个方法isEvenNumber 来判断一个数是否是偶数
      2 定义一个方法打印1-n 以内的所有偶数
   */
  bool isEvenNumber(int n) {
    return n.isEven;
  }
  void printNum(int n) {
    for(int i = 1; i < n; i++) {
      if(isEvenNumber(i)) {
        print(i);
      }
    }
  }
  printNum(100);

}