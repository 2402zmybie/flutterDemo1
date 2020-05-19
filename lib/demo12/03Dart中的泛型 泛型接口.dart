
import 'dart:math';

/**
 * 实现数据缓存的功能, 有文件缓存,和内存缓存, 内存缓存和文件缓存按照接口的约束实现
 *
 */
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}


class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是内存缓存, 把key = ${key} value = ${value} 写入到了内存中");
  }

}

void main() {
   MemoryCache m = new MemoryCache<Map>();
   m.setByKey("index", {"name":"张三", "age":20});

}