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
                          "Jika Anda merasa ada catatan yang tidak sesuai \natau keliru, silakan hubungi guru jurusan \nuntuk mengajukan klarifikasi.",
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

              Column(
                children: [
                  ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                  
                    title: Text(
                      "No 1",
                      style: GoogleFonts.inter(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                        fontSize: 17
                      ),
                      textAlign: TextAlign.left,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Catergoy :",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  ".....",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "Catatan :",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "....",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "Status :",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "....",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "Dilaporkan :",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "....",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "Update terakhir :",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "....",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "Aksi :",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "....",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ],
          ), 
        ),
      ),
    );
  }
}