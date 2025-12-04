import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku/widgets/app_bar_custom.dart';
import 'package:jurnalku/widgets/card_border_with_status.dart';
import 'package:intl/intl.dart';
import 'package:jurnalku/widgets/side_bar.dart';

class ProgressBelajar extends StatelessWidget {
  const ProgressBelajar({super.key});

  Widget _dateBadge() {
    String formattedDate = DateFormat(
      'EEEE, d MMMM yyyy',
      'en_US',
    ).format(DateTime.now());

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
        color: Color(0xFFE8F0FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        formattedDate,
        style: GoogleFonts.inter(
          fontSize: 12,
          color: Color(0xFF3164F4),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      endDrawer: SideBar() ,
      body: SafeArea(
        child: Column(
          children: [
            AppBarCustom(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Progress Belajar",
                      style: GoogleFonts.inter(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              
                    SizedBox(height: 4),
              
                    Text(
                      "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                      style: GoogleFonts.inter(fontSize: 13.5, color: Colors.black54),
                    ),
              
                    SizedBox(height: 10),
                    _dateBadge(),
                    SizedBox(height: 20),
              
                    Column(
                      children: [
                        CardBorderWithStatus(
                          title: "Total Pengajuan",
                          number: 0,
                          icon: Icons.check_circle,
                          iconColor: Colors.blue,
                          iconBackgroundColor: Colors.blue.withOpacity(0.15),
                          iconSize: 26,
                          iconPadding: EdgeInsets.all(10),
                          numberColor: Colors.black,
                          status: "Semua status",
                          statusColor: Colors.blue,
                        ),
                        SizedBox(height: 15),
                        CardBorderWithStatus(
                          title: "Halaman Ini",
                          number: 0,
                          icon: Icons.calendar_month,
                          iconColor: Colors.green,
                          iconBackgroundColor: Colors.green.withOpacity(0.15),
                          iconSize: 26,
                          iconPadding: EdgeInsets.all(10),
                          numberColor: Colors.black,
                          status: "Data ditampilkan",
                          statusColor: Colors.green,
                        ),
                        SizedBox(height: 15),
                        CardBorderWithStatus(
                          title: "Status Pending",
                          number: 0,
                          icon: Icons.pending_actions,
                          iconColor: Colors.orange,
                          iconBackgroundColor: Colors.orange.withOpacity(0.15),
                          iconSize: 26,
                          iconPadding: EdgeInsets.all(10),
                          numberColor: Colors.black,
                          status: "Perlu validasi",
                          statusColor: Colors.orange,
                        ),
                        SizedBox(height: 15),
                        CardBorderWithStatus(
                          title: "Total Halaman",
                          number: 1000,
                          icon: Icons.map,
                          iconColor: Colors.purple,
                          iconBackgroundColor: Colors.purple.withOpacity(0.15),
                          iconSize: 26,
                          iconPadding: EdgeInsets.all(10),
                          numberColor: Colors.black,
                          status: "Navigasi tersedia",
                          statusColor: Colors.purple,
                        ),
                      ],
                    ),
              
                    SizedBox(height: 20),
              
                    _buildKompetensiCard(
                      "Project Work",
                      namaProject: "Aplikasi Kasir Flutter",
                      kompetensi: "Pemrograman Mobile",
                      guru: "Nur Rizky",
                      tanggal: "13 Desember 2025",
                      status: "Selesai",
                      catatanGuru: "Sangat baik",
                      catatanSiswa: "Tidak ada kendala",
                    ),
              
                    SizedBox(height: 15),
              
                    _buildKompetensiCard(
                      "Mobile Apps",
                      namaProject: "Belum ada data",
                      kompetensi: "",
                      guru: "",
                      tanggal: "",
                      status: "",
                      catatanGuru: "",
                      catatanSiswa: "",
                    ),
              
                    SizedBox(height: 15),
              
                    _buildKompetensiCard(
                      "UKK (Uji Kompetensi Keahlian)",
                      namaProject: "Belum ada data",
                      kompetensi: "",
                      guru: "",
                      tanggal: "",
                      status: "",
                      catatanGuru: "",
                      catatanSiswa: "",
                    ),
              
                    SizedBox(height: 15),
              
                    _buildKompetensiCard(
                      "GIM",
                      namaProject: "Belum ada data",
                      kompetensi: "",
                      guru: "",
                      tanggal: "",
                      status: "",
                      catatanGuru: "",
                      catatanSiswa: "",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKompetensiCard(
    String title, {
    required String namaProject,
    required String kompetensi,
    required String guru,
    required String tanggal,
    required String status,
    required String catatanGuru,
    required String catatanSiswa,
  }) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromARGB(90, 160, 170, 180)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w700),
          ),

          SizedBox(height: 3),

          Text(
            "Kompetensi dan materi pembelajaran",
            style: GoogleFonts.inter(fontSize: 12.5, color: Colors.black54),
          ),

          SizedBox(height: 15),
          Divider(),
          SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF8F1FF),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xFFE0D5F5)),
            ),
            child: ExpansionTile(
              tilePadding: EdgeInsets.symmetric(horizontal: 15),
              childrenPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              dense: true,
              title: Text(
                namaProject,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _rowItem("Kompetensi", kompetensi),
                    _rowItem("Guru", guru),
                    _rowItem("Tanggal", tanggal),
                    _rowItem("Status", status),
                    _rowItem("Catatan Guru", catatanGuru),
                    _rowItem("Catatan Siswa", catatanSiswa),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 3),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
