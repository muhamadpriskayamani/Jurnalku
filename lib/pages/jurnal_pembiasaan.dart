import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku/widgets/app_bar_custom.dart';
import 'package:jurnalku/widgets/side_bar.dart';

class JurnalPembiasaan extends StatelessWidget {
  const JurnalPembiasaan({super.key});

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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jurnal Pembiasaan",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Desember 2025",
                        style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                            
                      SizedBox(height: 20),
                            
                      Container(
                        width: 180,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 23, 0, 196)
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Bulan \nsebelumnya",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      SizedBox(height: 20),
                            
                      Text(
                        "A. Pembiasaan Harian",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFF22C55E),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Sudah selesai",
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F4F5),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Belum diisi",
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDC2626),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Tidak diisi",
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                            
                      SizedBox(height: 30),
                            
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1.5
                        ),
                        itemCount: 31,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 70,
                            height: 30,
                            color: (index <= 3 ? Colors.grey[300] : Colors.grey[400]),
                            child: Center(
                              child: Text(
                                "${index + 1}",
                                style: GoogleFonts.inter(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                            
                            
                      SizedBox(height: 30),
                            
                            
                      Text(
                        "B. Pekerjaan yang dilakukan",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
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
                              "Pekerjaan 1",
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
                                      "Pekerjaan",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Text(
                                    "Membuat Project Laravel",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
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
                                      "Tanggal",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "12 Des 2025",
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
                                      "Saksi",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "Cahyo",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                            
                          SizedBox(height: 10),
                            
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
                              "Pekerjaan 2",
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
                                      "Pekerjaan",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Text(
                                    "Membuat Project Laravel",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
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
                                      "Tanggal",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "12 Des 2025",
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
                                      "Saksi",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "Cahyo",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                            
                          SizedBox(height: 15),
                            
                          Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.blue,
                              ),
                              Text(
                                "Tambah pekerjaan",
                                style: GoogleFonts.inter(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      ),
                            
                            
                            
                      SizedBox(height: 30),
                            
                            
                            
                       Text(
                        "C. Materi yang dipelajari",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
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
                              "Materi 1",
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
                                      "Status",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Text(
                                    "Approve",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
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
                                      "Tanggal",
                                      style: GoogleFonts.inter(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  const Text(": "),
                                  Expanded(
                                    child: Text(
                                      "12 Des 2025",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                            
                          SizedBox(height: 15),
                            
                          Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.blue,
                              ),
                              Text(
                                "Tambah Materi",
                                style: GoogleFonts.inter(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      ),
                            
                      SizedBox(height: 15),
                            
                            
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFF22C55E),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "A : Approve",
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "P : Pending",
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDC2626),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "R : Revisi",
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                            
                      SizedBox(height: 20),
                            
                      Text(
                        "D. Poin",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                            
                      SizedBox(height: 30),
                            
                            
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
                              "Kategori poin",
                              style: GoogleFonts.inter(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500
                              ),
                              textAlign: TextAlign.left,
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Jumlah poin ceklist pembiasaan : ",
                                          style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(width: 10),
                                         Text(
                                          "0",
                                          style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Row(
                                     children: [
                                       Text(
                                         "Jumlah keseluruhan poin : ",
                                         style: GoogleFonts.inter(
                                           color: Colors.black,
                                           fontWeight: FontWeight.w500
                                         ),
                                         textAlign: TextAlign.left,
                                       ),
                                       SizedBox(width: 10),
                                        Text(
                                         "0",
                                         style: GoogleFonts.inter(
                                           color: Colors.black,
                                           fontWeight: FontWeight.w500
                                         ),
                                         textAlign: TextAlign.left,
                                       ),
                                     ],
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "Jumlah Poin",
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 10),
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
                                        "M1",
                                        style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      children: [
                                        // Isi children dari inner expansion tile...
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
                                                 child: Column(
                                                   children: [
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(5) mengerjakan project/adanya \nupdate progress belajar",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(1 - 5) poin dari pertanyaan atau \nlaporan pengetahuan materi",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "Jumlah poin minggu ini :",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 18
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 20
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
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10),
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
                                        "M2",
                                        style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      children: [
                                        // Isi children dari inner expansion tile...
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
                                                 child: Column(
                                                   children: [
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(5) mengerjakan project/adanya \nupdate progress belajar",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(1 - 5) poin dari pertanyaan atau \nlaporan pengetahuan materi",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "Jumlah poin minggu ini :",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 18
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 20
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
                                        )
                                      ],
                                    ),
                                     SizedBox(height: 10),
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
                                        "M3",
                                        style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      children: [
                                        // Isi children dari inner expansion tile...
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
                                                 child: Column(
                                                   children: [
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(5) mengerjakan project/adanya \nupdate progress belajar",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(1 - 5) poin dari pertanyaan atau \nlaporan pengetahuan materi",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "Jumlah poin minggu ini :",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 18
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 20
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
                                        )
                                      ],
                                    ),
                                     SizedBox(height: 10),
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
                                        "M4",
                                        style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      children: [
                                        // Isi children dari inner expansion tile...
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(horizontal: 10),
                                                 child: Column(
                                                   children: [
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(5) mengerjakan project/adanya \nupdate progress belajar",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "(1 - 5) poin dari pertanyaan atau \nlaporan pengetahuan materi",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 20
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                       ],
                                                     ),
                                                     SizedBox(height: 20),
                                                     Row(
                                                       children: [
                                                         Text(
                                                          "Jumlah poin minggu ini :",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 18
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                        Text(
                                                          "0",
                                                          style: GoogleFonts.inter(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                            fontSize: 20
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
                                        )
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
            ),
          ],
        ),
      ),
    );
  }
}
