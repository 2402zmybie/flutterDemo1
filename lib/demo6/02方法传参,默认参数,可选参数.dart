
void main() {

  int plus(int n) {
    int sum = 0;
    for(var i = 1; i <= n;i++) {
      sum += i;
    }
    return sum;
  }

  print(plus(100));

  //形参可以不写类型(String int), 但是调用的时候不知道类型, 所以建议写上
  String getUserInfo(String username,int age) {
    return "姓名: $username------年龄: $age";
  }
  print(getUserInfo("张三", 10));

  print("------------------");

  /**
   * 方法 形参定义可选参数( 可选参数放在[]中, 且[]中可以有多个, 放在方法形参的最后一个)
   */
  String getUserInfo1(String username, [int age]) {
    if(age != null) {
      return "姓名: $username ------ 年龄: $age";
    }
    return "姓名: $username";
  }
  print(getUserInfo1("老何"));
  print(getUserInfo1("老何",28));
  print("------------------");
  /**
   * 定义可选参数, 可选参数里有默认值
   */
  String getUserInfo2(String username, [int age,String sex = "男"]) {
    if(age != null) {
      return "姓名: $username ------ 年龄: $age ---- 性别: $sex";
    }
    return "姓名: $username ---- 性别: $sex";
  }
  print(getUserInfo2("老何"));
  print(getUserInfo2("老何",28,"女"));
  print("------------------");

  /**
   * 定义命名参数, 命名参数是放在{} 里面的, 命名参数形参的时候必须要跟
   */
  String getUserInfo3(String username, {int age,String sex = "男"}) {
    if(age != null) {
      return "姓名: $username ----- 年龄:$age -----------性别: $sex";
    }
    return "姓名: $username ---- 性别: $sex";
  }
  print(getUserInfo3("李四",age: 20, sex: "中性"));
  print("------------------");


  /**
   * 实现一个 把方法当做参数的方法
   */
  void fn1() {
    print("fn1");
  }
  void fn2(fn) {
    fn();
  }
  fn2(fn1);
  print("------------------");


  /**
   * 匿名方法
   */
  Function fn = () {
    print("我是一个匿名方法");
  };
  fn();

}