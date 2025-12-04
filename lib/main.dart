import 'package:flutter/material.dart';
import 'package:jurnalku/login.dart';
import 'package:jurnalku/permintaan_saksi.dart';
import 'package:jurnalku/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jurnalku',
      home: PermintaanSaksiPage(),
    );
  }
}
