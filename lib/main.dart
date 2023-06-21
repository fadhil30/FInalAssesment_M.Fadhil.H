import 'package:flutter/material.dart';
import 'package:tugas_akhir_mbkm/page/home_page.dart';

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
        appBar: AppBar(
          title: Text('Tugas Akhir MBKM'),
          backgroundColor: Colors.blueAccent,
        ),
        body: HomePage(),
      ),
    );
  }
}
