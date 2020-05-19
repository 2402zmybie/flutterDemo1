/**
 * Dart中的接口:
 * dart的接口没有interface关键字定义接口, 而是普通类或者抽象类都可以作为接口实现
 * 同样使用implements关键字实现
 * 但是dart接口有点奇怪, 如果实现的类是普通类,会将普通类和抽象类中的 属性 方法全部复写一遍
 * 而因为抽象类可以定义抽象方法,普通类不可以, 所以一般如果要实现像 Java接口那样的方式, 一般会使用抽象类
 *
 * 建议使用抽象类定义接口
 * */

//当做接口 接口就是约定 规范
abstract class Db {
  String uri;  //数据库的连接地址
  add();
  save();
  delete();

}

class Mysql implements Db {

  Mysql(this.uri);

  @override
  String uri;

  @override
  add() {
    print("mysql的uri: ${this.uri}");
    print("这是Mysql的add方法");
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }
}

class Mongodb implements Db {
  @override
  String uri;

  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

}


void main() {
  Mysql mysql = new Mysql("xxx");
  mysql.add();
}