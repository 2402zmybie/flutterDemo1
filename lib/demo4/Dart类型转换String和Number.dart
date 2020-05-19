/**
 * Number类型转换成 String类型 toString()
 * String类型转换成Number类型  parse()
 */
main() {
  String str = "123";
  var myNum = int.parse(str);
  print(myNum is int);  //true
  print('----------------');

  String str1 = "123";
  var myNum1 = double.parse(str1);
  print(myNum1 is double);  //true
  print('----------------');

  //报错
//  String str2 = "";
//  var myNum2 = double.parse(str2);
//  print(myNum2 is double);
  try {
    String str2 = "10";
    var myNum2 = double.parse(str2);
    print(myNum2 is double);
  }catch(err) {
    print(0);
  }
  print('----------------');

  var myNum3 = 12;
  var str3 = myNum3.toString();
  print(str3 is String);
  print('----------------');


  //isEmpty
  var str4 = null;
  if(str4.isEmpty) {
    print('str空');
  }else {
    print('str不为空');
  }
  print('----------------');

  //Nan
  var str5 = 0/0;
  if(str5.isNaN) {
    print("NaN");
  }else {
    print("is not Nan");
  }




}