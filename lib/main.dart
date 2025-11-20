import 'package:flutter/material.dart';
import 'package:jurnalku/panduan_pengguna.dart';
import 'package:jurnalku/explore_page.dart';
import 'package:jurnalku/progress_belajar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ProgressBelajar(),
    );
  }
}
