/**
map常用属性:
    keys
    values
    isEmpty
    isNotEmpty
常用方法:
   remove(key)
   addAll({...})
   containsValue  查看映射内的值, 返回true/false
   forEach
   map
   where
   any
   every
*/
main() {
  //定义map1
  var person1 = {
    "name":"张三",
    "age":24
  };
  print(person1);
  //定义map2
  var person2 = Map();
  person2["name"] = "李四";
  print(person2);

  //常用属性
  print(person1.keys.toList());   //[name, age]
  print(person1.values.toList());   //[张三, 24]
  print(person1.isNotEmpty);  //判断映射是否不为空


  //常用方法
  Map personObject = {
    "name":"老何",
    "age": 28,
    "sex":"male"
  };
  //给map增加键值对
  personObject.addAll({
    "work":["敲代码","送外卖"],
    "height":167
  });
  print(personObject);
  //删除 键值对
  personObject.remove("sex");
  print(personObject);


//  forEach
//  map
//  where
//  any
//  every



}