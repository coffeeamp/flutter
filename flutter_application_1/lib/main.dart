import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // 화면을 상중하로 구성하는 위젯
      appBar: AppBar(), // 상단바
      body: Column(// 가로 : Row, 세로 : Column
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
      ]), // 중앙바디
      bottomNavigationBar: BottomAppBar(
        child: Text('Hello'),
      ), // 하단바
    )
        // 아이콘위젯 Icon(Icons.home)
        // 이미지위젯 Image.network('https://picsum.photos/250?image=9'),
        // Image.asset('경로') // pubspec.yaml에 assets: - images/ 경로를 추가해야함
        // 박스위젯 Container(color: Colors.red, width: 100, height: 100)
        // 텍스트위젯 Text('Hello World', style: TextStyle(fontSize: 40))
        );
  }
}
