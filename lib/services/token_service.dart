import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = new FlutterSecureStorage();

Future<void> saveToken(String token) async {
  await storage.write(key: 'auth_token', value: token);
}

// ini digunakan untuk header atau cek sudah login atau belumnya
Future<String?> getToken() async {
  // Akan return String token jika ada, atau null jika tidak ada
  return await storage.read(key: 'auth_token');
}

// menghapus token
Future<void> deleteToken() async {
  return await storage.delete(key: 'auth_token');
}
