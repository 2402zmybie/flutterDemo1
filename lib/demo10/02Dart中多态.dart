/**
 * Dart中的多态:
 * 子类的实例赋值给父类的引用
 * 多态就是父类定义一个方法不去实现, 让继承他的子类去实现, 每个子类有不同的效果
 * */

abstract class Animal {
  void eat();  //抽象方法
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }
  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print("小猫在吃老鼠");
  }
  run() {
    print('小猫在跑');
  }
}


void main() {
  Animal d = new Dog();
  d.eat();
//  d.run(); 父类没有这个方法  所以不能调用

  Animal c = new Cat();
  c.eat();
}