void main(){
  //匿名方法
  var printNum = () {
    print(123);
  };
  printNum();  //调用方法
  print("-------------------");
  //自执行方法
  ((int n) {
    print(n);
    print("我是自执行方法");
  })(12);

  print("-------------------");

  /**
   * 递归: 求1 到100的和
   */
  var sum = 0;
  fn(int n) {
    sum += n;
    if(n == 0) {
      return;
    }
    fn(n -1);
  }
  fn(100);
  print(sum);
}