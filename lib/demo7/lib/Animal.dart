class Animal {
  //定义私有属性  必须单独抽离一个文件, 并且前面加上_
  String _name;
  int age;
  Animal(this._name,this.age);
  void printInfo() {
    print("${this._name} ---------------- ${this.age}");
  }
  //公有方法 返回私有属性
  String getName() {
    return this._name;
  }

  //定义私有方法
  void _run() {
    print("这是一个私有方法");
  }

  //定义公有方法 来访问私有方法
  execRun() {
    this._run();
  }
}