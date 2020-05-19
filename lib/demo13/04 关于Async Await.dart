/**
 *async 和await
 * 这两个关键字的使用只需要记住两点:
 * 1 只有async方法才能使用await关键字调用方法
 * 2 如果调用别的async方法 必须使用await关键字
 *
 * async是让方法变成异步
 * await是等待异步方法执行完成
 */
testAsync() async{
  return "hello async";
}

main() async {
  var result = await testAsync();  //testAsync是async方法, 在前面加上 await关键字,  那么main()后面也要加上async
  print(result);
}