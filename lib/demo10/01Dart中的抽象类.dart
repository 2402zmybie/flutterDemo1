/**
 * Dart中的抽象类: Dart抽象类主要用于定义标准,子类可以继承抽象类, 也可以实现抽象接口
 * 1 abstract
 * 2 Dart中的抽象方法不能用abstract声明, Dart中没有方法体的方法我们称之为 抽象方法
 * 3 如果子类继承抽象类必须得实现里面的抽象方法
 * 4 如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法
 * 5 抽象类不能实例化, 只有继承它的子类可以
 *
 * extends抽象类 和implements的区别:
 * 1 如果复写抽象类里面的方法, 并且要用抽象方法约束子类的话 我们就用extends继承抽象类
 * 2 如果只是把抽象类当做标准的话 我们就用implements实现抽象类
 * */

abstract class Animal {
  eat();  //抽象方法
  void run() {
    print("动物在run");
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }

}

void main() {
  Dog d = new Dog();
  d.eat();
  d.run();
}