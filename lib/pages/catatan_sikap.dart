import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku/widgets/card_border.dart';

class CatatanSikap extends StatelessWidget {
  const CatatanSikap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        shape: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.black12
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home_outlined,
                color: Colors.grey[600],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Name",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 2),
                      Text(
                        "PPLG XII-5",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.grey[600]
                        ),
                        textAlign: TextAlign.right,
                      )
                    ],
                  ),

                  SizedBox(width: 10),

                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(50),
                    child: Image.asset(
                      width: 42,
                      "assets/images/profile-picture.jpeg",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Catatan Sikap Saya",
                style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.normal
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: BoxBorder.all(
                    color: Color(0xFFFDE68A),
                  ),
                  color: Color.fromARGB(185, 254, 249, 195)
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
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          "Jika Anda merasa ada catatan yang tidak sesuai atau\nkeliru, silakan hubungi guru jurusan untuk mengajukan\nklarifikasi.",
                          style: GoogleFonts.inter(
                            color: Color(0xFF92400E),
                          ),
                        )
                      ],
                    )
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
        
              Container(
                width: double.infinity,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Colors.black12,
                      offset: Offset(2, 1)
                    )
                  ]
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey.shade300
                            )
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              _buildTableHeader('No', width: 60), 
                              _buildTableHeader('Category', width: 120),
                              _buildTableHeader('Catatan', width: 150),
                              _buildTableHeader('Status', width: 100),
                              _buildTableHeader('Dilaporkan', width: 120),
                              _buildTableHeader('Update terakhir', width: 150),
                              _buildTableHeader('Aksi', width: 100),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.check_circle_outline_outlined,
                                size: 50,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Tidak ada catatan",
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Belum ada catatan sikap yang dilaporkan",
                                style: GoogleFonts.inter(
                                  color: Colors.grey
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ), 
        ),
      ),
    );
  }
}

Widget _buildTableHeader(String text, {double width = 100}) {
  return Container(
    width: width, // **HARUS DIBERI WIDTH EKSPLISIT**
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w600
      ),
    ),
  );
}