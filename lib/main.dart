// lib/main.dart

import 'package:flutter/material.dart';
// import 'package:mobailab2cet158/screen/item.dart'; // คอมเมนต์หน้าจอเก่าทิ้งไป
import 'package:mobailab2cet158/screen/home.dart'; // import หน้าจอใหม่

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // เปลี่ยนสีและข้อความ AppBar ให้เข้ากับแอปใหม่
        appBar: AppBar(
          title: const Text("ข้อมูลเพื่อนของฉัน"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        // เปลี่ยน body ให้เรียกใช้ FriendListScreen
        body: const FriendListScreen(),
        // กำหนดสีพื้นหลังโดยรวมของแอป
        backgroundColor: Colors.deepPurple.shade900,
      ),
    );
  }
}