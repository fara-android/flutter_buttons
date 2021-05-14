import 'package:flutter/material.dart';

import 'ButtonScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Screen(),debugShowCheckedModeBanner: false,);
  }
}
