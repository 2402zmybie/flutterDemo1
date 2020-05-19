/**
 * while 和do..while的区别  第一次循环条件不成立的情况下
 */
main() {

  //什么都没有输出
  int i = 10;
  while(i < 2) {
    print("执行代码");
  }

  print("------------------");

  /**
   * 走一下
      4
   */
  int j = 5;
  do {
    print("走一下");
    j--;
    print(j);
  }while(j < 2);


}