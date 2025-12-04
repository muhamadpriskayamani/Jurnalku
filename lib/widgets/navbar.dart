import 'package:flutter/material.dart';
import 'package:jurnalku/pages/explore_page.dart';
import 'package:jurnalku/pages/login.dart';
import 'package:jurnalku/pages/catatan_sikap.dart';
import 'package:jurnalku/pages/dashboard.dart';
import 'package:jurnalku/pages/jurnal_pembiasaan.dart';
import 'package:jurnalku/pages/panduan_pengguna.dart';
import 'package:jurnalku/pages/permintaan_saksi.dart';
import 'package:jurnalku/pages/progress_belajar.dart';
import 'package:jurnalku/pages/setting_page.dart';

class NavbarPage extends StatelessWidget {
  const NavbarPage({super.key});

  Widget _buildProfileHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24.0,
        bottom: 0.0,
        left: 16.0,
        right: 16.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE0E0E0),
            width: 0.5,
          ), 
        ),
      ),
    );
  }

  // Widget untuk menu-menu navigasi
  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54),
      title: Text(title, style: const TextStyle(color: Colors.black)),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildProfileHeader(context),

          _buildMenuItem(
            icon: Icons.home_outlined,
            title: 'Dashboard',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard())
            ),
          ),
          _buildMenuItem(
            icon: Icons.person_outline,
            title: 'Profil',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard())
            ),
          ),
          _buildMenuItem(
            icon: Icons.explore_outlined,
            title: 'Jelajahi',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExplorePage())
            ),
          ),

          const Divider(thickness: 0.5, height: 0.5, indent: 16, endIndent: 16),

          _buildMenuItem(
            icon: Icons.book_outlined,
            title: 'Jurnal Pembiasaan',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JurnalPembiasaan())
              ),
          ),
          _buildMenuItem(
            icon: Icons.person_add_alt_outlined,
            title: 'Permintaan Saksi',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PermintaanSaksiPage())
            ),
          ),
          _buildMenuItem(
            icon: Icons.bar_chart,
            title: 'Progress',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProgressBelajar())
            ),
          ),
          _buildMenuItem(
            icon: Icons.warning_amber_outlined,
            title: 'Catatan Sikap',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CatatanSikap())
            ),
          ),

          const Divider(thickness: 0.5, height: 0.5, indent: 16, endIndent: 16),

          _buildMenuItem(
            icon: Icons.menu_book_outlined,
            title: 'Panduan Penggunaan',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PanduanPengguna())
            ),
          ),
          _buildMenuItem(
            icon: Icons.settings_outlined,
            title: 'Pengaturan Akun',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingPage())
            ),
          ),
          _buildMenuItem(
            icon: Icons.logout,
            title: 'Log Out',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage())
            ),
          ),
        ],
      ),
    );
  }
}