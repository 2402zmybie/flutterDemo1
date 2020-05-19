abstract class A {
  String name;
  printA();
}

abstract class B {
  printB();
}

//多实现
class C implements A,B {
  @override
  String name;

  @override
  printA() {
    // TODO: implement printA
    return null;
  }

  @override
  printB() {
    // TODO: implement printB
    return null;
  }

}