import 'package:flutter/material.dart';
import 'package:tc_kimlik_dogrulama/tasarim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'T.C. Kimlik Doğrulama',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const Tasarim());
  }
}
