import 'package:flutter/material.dart';
import 'package:jurnalku/widgets/app_bar_custom.dart';
import 'package:jurnalku/widgets/side_bar.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool oldPasswordVisible = false;
  bool newPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: SideBar(),
      body: SafeArea(
        child: Column(
          children: [
            AppBarCustom(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =title
                      Text(
                        "Pengaturan Akun",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
        
                      SizedBox(height: 4),
        
                      // ================= BREADCRUMB ====================
                      Text(
                        "Dashboard / Pengaturan Akun",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
        
                      SizedBox(height: 18),
        
                      // card profile
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Informasi Profil",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
        
                            SizedBox(height: 16),
        
                            // FOTO PROFIL + CAMERA BUTTON
                            Center(
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 55,
                                    backgroundImage: AssetImage(
                                      "assets/image/profile.jpg",
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.camera_alt,
                                            size: 18, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
        
                            SizedBox(height: 8),
                            Center(
                              child: Text(
                                "Klik untuk mengubah foto",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
        
                            SizedBox(height: 20),
        
                            // isian 
                            buildLabel("Nama"),
                            buildReadOnlyField("Nisa Auliani"),
        
                            SizedBox(height: 12),
        
                            buildLabel("NIS"),
                            buildReadOnlyField("12309945"),
        
                            SizedBox(height: 12),
        
                            buildLabel("Rombel"),
                            buildReadOnlyField("PPLG XII-5"),
        
                            SizedBox(height: 12),
        
                            buildLabel("Rayon"),
                            buildReadOnlyField("Cic 8"),
                          ],
                        ),
                      ),
        
                      SizedBox(height: 16),
        
                      // ubah kata sandi
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ubah Kata Sandi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
        
                            SizedBox(height: 20),
        
                            // sandi yang lama
                            Text(
                              "Kata Sandi Lama",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 6),
        
                            TextField(
                              obscureText: !oldPasswordVisible,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                hintText: "Masukkan password",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    oldPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      oldPasswordVisible = !oldPasswordVisible;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
        
                            SizedBox(height: 6),
                            Text(
                              "Masukkan kata sandi lama anda",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
        
                            SizedBox(height: 20),
        
                            // sandi yg baru
                            Text(
                              "Kata Sandi Baru",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 6),
        
                            TextField(
                              obscureText: !newPasswordVisible,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                hintText: "Masukkan password",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    newPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      newPasswordVisible =
                                          !newPasswordVisible;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
        
                            SizedBox(height: 26),
        
                            // simpan
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 14),
                                  backgroundColor: Color(0xFF0D47A1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Simpan Perubahan",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
        
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // simpan dan benar
  Widget buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    );
  }

  Widget buildReadOnlyField(String text) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: text,
        hintStyle: TextStyle(color: Colors.black87),
      ),
    );
  }
}