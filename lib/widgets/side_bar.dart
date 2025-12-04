import 'package:flutter/material.dart';
import 'package:jurnalku/pages/catatan_sikap.dart';
import 'package:jurnalku/pages/dashboard.dart';
import 'package:jurnalku/pages/explore_page.dart';
import 'package:jurnalku/pages/jurnal_pembiasaan.dart';
import 'package:jurnalku/pages/login.dart';
import 'package:jurnalku/pages/panduan_pengguna.dart';
import 'package:jurnalku/pages/permintaan_saksi.dart';
import 'package:jurnalku/pages/profile.dart';
import 'package:jurnalku/pages/progress_belajar.dart';
import 'package:jurnalku/pages/setting_page.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isDestructive = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
        leading: Icon(
          icon, 
          color: isDestructive ? Colors.redAccent : const Color(0xFF555555),
          size: 22,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isDestructive ? Colors.redAccent : const Color(0xFF333333),
            fontWeight: FontWeight.w500,
            fontSize: 14.5,
          ),
        ),
        hoverColor: Colors.blue.withOpacity(0.05),
        onTap: () {
          Navigator.pop(context); // Tutup drawer sebelum pindah halaman
          onTap();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      backgroundColor: Colors.white,
      child: Expanded(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: [
            _buildMenuItem(
              context: context,
              icon: Icons.home_rounded,
              title: 'Dashboard',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard())),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.person_rounded,
              title: 'Profil',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileDiri())), // Ganti ke page Profil
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.explore_rounded,
              title: 'Jelajahi',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ExplorePage())),
            ),
      


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Divider(thickness: 1, color: Color(0xFFEEEEEE)),
            ),
            

      
            _buildMenuItem(
              context: context,
              icon: Icons.book_rounded,
              title: 'Jurnal Pembiasaan',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => JurnalPembiasaan())),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.people_alt_rounded,
              title: 'Permintaan Saksi',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PermintaanSaksiPage())),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.bar_chart_rounded,
              title: 'Progress',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProgressBelajar())),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.warning_amber_rounded,
              title: 'Catatan Sikap',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CatatanSikap())),
            ),



             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Divider(thickness: 1, color: Color(0xFFEEEEEE)),
            ),



            _buildMenuItem(
              context: context,
              icon: Icons.menu_book_rounded,
              title: 'Panduan',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PanduanPengguna())),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.settings_rounded,
              title: 'Pengaturan',
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SettingPage())),
            ),
            _buildMenuItem(
              context: context,
              icon: Icons.logout_rounded,
              title: 'Log Out',
              isDestructive: true, // Merah
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage())),
            ),
          ],
        ),
      ),
    );
  }
}