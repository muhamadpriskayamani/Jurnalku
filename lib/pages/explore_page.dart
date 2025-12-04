import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:ui';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final Color primaryColor = const Color(0xFF02398C);

  bool showFilters = false;

  String selectedRombel = 'Semua Rombel';
  String selectedRayon = 'Semua Rayon';
  String selectedJurusan = 'Semua Jurusan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Row(
          children: [
            Icon(Icons.menu_book, color: primaryColor),
            SizedBox(width: 8),
            Text(
              "Jurnalku",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Dashboard", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 330,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/bgwk.jpg',
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(color: Colors.black.withOpacity(0.35)),
                  ),
                ),

                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Direktori  Siswa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 24),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey[400]!,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.search,
                                            color: Colors.grey[600],
                                          ),
                                          SizedBox(width: 6),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Cari nama siswa, NIS, atau rombel...",
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),

                                  SizedBox(
                                    height: 48,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF02398C),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 22,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Cari",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),

                              OutlinedButton.icon(
                                onPressed: () {
                                  setState(() {
                                    showFilters = !showFilters;
                                  });
                                },
                                icon: Icon(
                                  Icons.filter_alt_outlined,
                                  color: Color(0xFF02398C),
                                ),
                                label: Text(
                                  "Filter Lanjutan",
                                  style: TextStyle(color: Color(0xFF02398C)),
                                ),
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18,
                                    vertical: 12,
                                  ),
                                  // side: BorderSide(color: Color(0xFF02398C)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              AnimatedSize(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                child: showFilters
                                    ? Padding(
                                        padding: EdgeInsets.only(top: 16),
                                        child: SingleChildScrollView(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          child: Column(
                                            children: [
                                              DropdownButtonFormField<String>(
                                                value: selectedRombel,
                                                decoration: InputDecoration(
                                                  labelText: "Rombel",
                                                  border: OutlineInputBorder(),
                                                ),
                                                items:
                                                    [
                                                          "Semua Rombel",
                                                          "PPLG XII-5",
                                                          "PPLG XII-4",
                                                        ]
                                                        .map(
                                                          (e) =>
                                                              DropdownMenuItem(
                                                                value: e,
                                                                child: Text(e),
                                                              ),
                                                        )
                                                        .toList(),
                                                onChanged: (val) {
                                                  setState(
                                                    () => selectedRombel = val!,
                                                  );
                                                },
                                              ),

                                              SizedBox(height: 14),

                                              DropdownButtonFormField<String>(
                                                value: selectedRayon,
                                                decoration: InputDecoration(
                                                  labelText: "Rayon",
                                                  border: OutlineInputBorder(),
                                                ),
                                                items:
                                                    [
                                                          "Semua Rayon",
                                                          "Cia 5",
                                                          "Cia 6",
                                                          "Cis 5",
                                                          "Wik 4",
                                                        ]
                                                        .map(
                                                          (e) =>
                                                              DropdownMenuItem(
                                                                value: e,
                                                                child: Text(e),
                                                              ),
                                                        )
                                                        .toList(),
                                                onChanged: (val) {
                                                  setState(
                                                    () => selectedRayon = val!,
                                                  );
                                                },
                                              ),

                                              SizedBox(height: 14),

                                              DropdownButtonFormField<String>(
                                                value: selectedJurusan,
                                                decoration: InputDecoration(
                                                  labelText: "Jurusan",
                                                  border: OutlineInputBorder(),
                                                ),
                                                items:
                                                    [
                                                          "Semua Jurusan",
                                                          "PPLG",
                                                          "MPLB",
                                                          "DKV",
                                                        ]
                                                        .map(
                                                          (e) =>
                                                              DropdownMenuItem(
                                                                value: e,
                                                                child: Text(e),
                                                              ),
                                                        )
                                                        .toList(),
                                                onChanged: (val) {
                                                  setState(
                                                    () =>
                                                        selectedJurusan = val!,
                                                  );
                                                },
                                              ),

                                              SizedBox(height: 20),

                                              SizedBox(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                        backgroundColor: Color(
                                                          0xFF02398C,
                                                        ),
                                                      ),
                                                  child: Text(
                                                    "Terapkan Filter",
                                                  ),
                                                ),
                                              ),

                                              SizedBox(height: 6),

                                              SizedBox(
                                                width: double.infinity,
                                                child: TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      selectedRombel =
                                                          "Semua Rombel";
                                                      selectedRayon =
                                                          "Semua Rayon";
                                                      selectedJurusan =
                                                          "Semua Jurusan";
                                                    });
                                                  },
                                                  child: Text("Reset Filter"),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Menampilkan 1 - 2 dari 538 siswa",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  buildCard(
                    "Muhamad Priska Yamani",
                    "12309791",
                    "PPLG XII-5",
                    "Cis 5",
                    "1 Portfolio",
                    "6 Sertifikat",
                    "assets/images/profile.jpg",
                  ),
                  buildCard(
                    "Muhammad Nur Rizky",
                    "12309886",
                    "PPLG XII-5",
                    "Cia 5",
                    "1 Portfolio",
                    "10 Sertifikat",
                    "assets/images/nur.jpg",
                  ),
                  buildCard(
                    "Raffi Gusti Putra",
                    "12309972",
                    "PPLG XII-5",
                    "Wik 4",
                    "1 Portfolio",
                    "11 Sertifikat",
                    "assets/images/rapi.jpg",
                  ),
                  buildCard(
                    "Ahmad Syakarudin",
                    "12309504",
                    "PPLG XII-5",
                    "Cia 6",
                    "3 Portfolio",
                    "12 Sertifikat",
                    "assets/images/mad.jpg",
                  ),
                  buildCard(
                    "Pandu Putra Pratama",
                    "1251082",
                    "PPLG XII-5",
                    "Cib 3",
                    "2 Portfolio",
                    "15 Sertifikat",
                    "assets/images/pan.jpg",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.black87),
                      SizedBox(width: 6),
                      Text("Previous", style: TextStyle(color: Colors.black87)),
                    ],
                  ),
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                  ),
                  child: Row(
                    children: [
                      Text("Next", style: TextStyle(color: Colors.black87)),
                      SizedBox(width: 6),
                      Icon(Icons.arrow_forward, color: Colors.black87),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30),
              color: Color.fromARGB(255, 22, 25, 130),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 23,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 23,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 23,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 23,
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Text(
                    "© GEN-28 PPLG SMK Wikrama Bogor. All Rights \nReserved.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(
    String nama,
    String nis,
    String rombel,
    String rayon,
    String portfolio,
    String sertifikat,
    String fotoPath,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 38, backgroundImage: AssetImage(fotoPath)),
          SizedBox(height: 16),
          Text(
            nama,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 6),
          Text(
            "$nis | $rombel | $rayon",
            style: TextStyle(color: Colors.grey[600], fontSize: 13.5),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 16),
          Divider(),
          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.folder_copy_outlined,
                    color: Colors.grey[700],
                    size: 15,
                  ),
                  SizedBox(width: 6),
                  Text(portfolio, style: TextStyle(fontSize: 13.5)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.workspace_premium_outlined,
                    color: Colors.grey[700],
                    size: 15,
                  ),
                  SizedBox(width: 6),
                  Text(sertifikat, style: TextStyle(fontSize: 13.5)),
                ],
              ),
            ],
          ),

          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF02398C),
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lihat Detail",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
