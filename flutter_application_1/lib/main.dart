import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // 화면을 상중하로 구성하는 위젯
      appBar: AppBar(title: Text('앱임')), // 상단바
      body: Text('안녕'), // 중앙바디
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone, size: 25),
              Icon(Icons.message, size: 25),
              Icon(Icons.contact_page, size: 25),
            ],
          ),
        ), // 하단바
      ), 
      )
    
    
        // 아이콘위젯 Icon(Icons.home)
        // 이미지위젯 Image.network('https://picsum.photos/250?image=9'),
        // Image.asset('경로') // pubspec.yaml에 assets: - images/ 경로를 추가해야함
        // 박스위젯 Container(color: Colors.red, width: 100, height: 100)
        // 텍스트위젯 Text('Hello World', style: TextStyle(fontSize: 40))
      );
  }
}
