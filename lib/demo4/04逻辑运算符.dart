main() {
  /* && 并且: 全部为true的话值为true, 否则为false */
  bool a = false;
  bool b = true;
  print(a && b);
  print("-------------------");
  /**
   * ||或者: 全为false的话值为false, 否则为true
   */
  bool c = false;
  bool d = true;
  print(c || d);
  print("-------------------");

  /**
   * 如果一个人的年龄是20 或者sex是女的话 我们就打印这个人
   */
  int age = 20;
  String sex = "男";
  if(age == 20 || sex == "女") {
    print('$age ---  $sex');
  }


}