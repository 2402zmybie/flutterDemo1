/**
    1、我们自定义的库
    import 'lib/xxx.dart';
    2、系统内置库
    import 'dart:math';
    import 'dart:io';
    import 'dart:convert';
    3、Pub包管理系统中的库
    https://pub.dev/packages
    https://pub.flutter-io.cn/packages
    https://pub.dartlang.org/flutter/

    1、需要在自己想项目根目录新建一个pubspec.yaml
    2、在pubspec.yaml文件 然后配置名称 、描述、依赖等信息
    3、然后运行 pub get 获取包下载到本地
    4、项目中引入库 import 'package:http/http.dart' as http; 看文档使用
 */
import 'package:date_format/date_format.dart';
import 'dart:convert' as convert;          //重命名
import 'package:http/http.dart' as http;    //重命名

void main(List<String> arguments) async {
  var url = 'http://news-at.zhihu.com/api/3/stories/latest';


  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }

  print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
  print(formatDate(DateTime(1989, 2, 21), [yy, '-', m, '-', dd]));
  print(formatDate(DateTime(1989, 2, 1), [yy, '-', m, '-', d]));
}