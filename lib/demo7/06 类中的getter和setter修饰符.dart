//class Rect {
//  num height;
//  num width;
//
//  Rect(this.height,this.width);
//
//  area() {
//    return this.height * this.width;
//  }
//}
//
//void main() {
//  Rect r = new Rect(10, 4);
//  print("面积: ${r.area()}");
//}

class Rect{
  num height;
  num width;
  Rect(this.height,this.width);
  //get这种写法  有点类似于计算属性, 通过{}算出值, 调用的时候也不需要()
  get area{
    return this.height * this.width;
  }

  set areaHeight(value) {
    this.height = value;
  }
}

void main() {
  Rect r = Rect(10, 2);
//  print("面积: ${r.area}");

  r.areaHeight = 6;
  print("面积: ${r.area}");
}