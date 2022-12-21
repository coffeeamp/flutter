import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Image.asset('assets/images/dog.png'),
      // 아이콘위젯 Icon(Icons.home)
      // 이미지위젯 Image.network('https://picsum.photos/250?image=9'),
      // Image.asset('경로') // pubspec.yaml에 assets: - images/ 경로를 추가해야함
      // 박스위젯 Container(color: Colors.red, width: 100, height: 100)
      // 텍스트위젯 Text('Hello World', style: TextStyle(fontSize: 40))
    );
  }
}
