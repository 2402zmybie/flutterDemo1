/**
 * continue跳过当前循环,继续循环
 * break 跳出循环
 */
main() {
  for(var i = 1; i < 10;i++) {
    if(i == 4) {
      continue;
    }
    print(i);
  }

  print("--------------------");

  for(var i = 1; i< 10; i++) {
    if(i == 4) {
      break;
    }
    print(i);
  }
}