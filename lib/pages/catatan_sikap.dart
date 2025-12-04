import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku/widgets/app_bar_custom.dart';
import 'package:jurnalku/widgets/card_border.dart';
import 'package:jurnalku/widgets/side_bar.dart';

class CatatanSikap extends StatelessWidget {
  const CatatanSikap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideBar(),
      body: SafeArea(
        child: Column(
          children: [
            AppBarCustom(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Catatan Sikap Saya",
                        style: GoogleFonts.inter(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: BoxBorder.all(color: Color(0xFFFDE68A)),
                          color: Color.fromARGB(185, 254, 249, 195),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.dangerous_outlined,
                              color: Color(0xFFD97706),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Perhatian",
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF92400E),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Jika Anda merasa ada catatan \nyang tidak sesuai \natau keliru, silakan hubungi guru jurusan \nuntuk mengajukan klarifikasi.",
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF92400E),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),

                      CardBorder(
                        title: "Total catatan",
                        icon: Icons.edit_document,
                        iconColor: Color(0xFF2563EB),
                        iconBackgroundColor: Color(0xFFDBEAFE),
                        number: 0,
                      ),
                      SizedBox(height: 10),
                      CardBorder(
                        title: "Dalam Perbaikan",
                        icon: Icons.flash_on_rounded,
                        iconColor: Color(0xFFCA8A04),
                        iconBackgroundColor: Color(0xFFFEF9C3),
                        number: 0,
                      ),
                      SizedBox(height: 10),
                      CardBorder(
                        title: "Sudah berubah",
                        icon: Icons.check_circle_outlined,
                        iconColor: Color(0xFF16A34A),
                        iconBackgroundColor: Color(0xFFDCFCE7),
                        number: 0,
                      ),

                      SizedBox(height: 20),

                      Column(
                        children: [
                          ExpansionTile(
                            collapsedBackgroundColor: Colors.grey[50],
                            backgroundColor: Colors.white,
                            textColor: Colors.black,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(color: Colors.grey.shade300),
                            ),
                            collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(color: Colors.grey.shade300),
                            ),

                            title: Text(
                              "Laporan No. 1",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),

                            childrenPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Kategori",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "Pelanggaran Ringan",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Catatan",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "Siswa terlambat masuk jam pelajaran lebih dari 15 menit tanpa keterangan.",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Status",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .orange
                                          .shade100, // Background orange muda
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      "Menunggu",
                                      style: GoogleFonts.inter(
                                        color: Colors.orange[800],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Dilaporkan",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "Osis",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Update",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "20 Des 2025",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
}
