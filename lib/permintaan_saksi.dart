import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PermintaanSaksi extends StatelessWidget {
  const PermintaanSaksi({super.key});

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
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Permintaan Saksi",
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 232, 241, 252),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Senin 18 Desember 2025",
                style: GoogleFonts.inter(
                  color: Color(0xFF1D4ED8),
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            SizedBox(height: 30),

            Container(
              width: double.infinity,
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
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
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
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Pengirim",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ),
                        Expanded(
                          child: Text(
                            "Tanggal",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ),
                        Expanded(
                          child: Text(
                            "Konfirmasi",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    width: double.infinity,
                    child: Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.people_alt_outlined,
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Belum ada Permintaan",
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 22
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Belum ada yang mengirim permintaan \nsaksi kepada Anda",
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
            )
          ],
        ), 
      ),
    );
  }
}
