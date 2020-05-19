/**
 * 泛型就是解决 类,接口, 方法的复用性,以及对不特定数据类型的支持(类型校验)
 *
 * */

//定义泛型方法

T getData<T>(T value) {
  return value;
}

void main() {
  //没有指定类型
  print(getData("xxxx"));

  //指定了泛型的传入类型 和返回类型 (同时对传入参数和返回参数进行校验)
  int data = getData<int>(123);
  print(data);
}