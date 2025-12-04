import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jurnalku/pages/panduan_pengguna.dart';
import 'package:jurnalku/pages/explore_page.dart';
import 'package:jurnalku/pages/profile.dart';
import 'package:jurnalku/pages/progress_belajar.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi locale tanggal Indonesia
  await initializeDateFormatting('en_US', null);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalku',
      debugShowCheckedModeBanner: false,
      home: ProfileDiri(),
    );
  }
}
