main() {
  //第一种定义Maps的方式 在dart里面key必须加上引号(区别于js key可以不加引号)
  var person = {
    'name':'张三',
    "age": 20,
    "work":["程序员","外卖员"]
  };
  print(person);
  print(person['name']);
  print(person["work"]);

  print("--------------------------");
  //第二种定义Map的方式
  var p = Map();
  p["name"] = "李四";
  p["age"] = "22";
  p["work"] = ["李四工作1","李四工作2"];
  print(p);
}