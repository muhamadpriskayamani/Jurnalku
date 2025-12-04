import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku/pages/catatan_sikap.dart';
import 'package:jurnalku/pages/jurnal_pembiasaan.dart';
import 'package:jurnalku/pages/permintaan_saksi.dart';
import 'package:jurnalku/pages/progress_belajar.dart';
import 'package:jurnalku/widgets/app_bar_custom.dart';
import 'package:jurnalku/widgets/card_border_with_status.dart';
import 'package:jurnalku/widgets/side_bar.dart';
import 'package:jurnalku/pages/profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(
      255,
      24,
      0,
      129,
    ); // Ganti dengan warna 'primary' Anda
    const Color secondaryColor = Color.fromARGB(255, 0, 45, 223);

    return Scaffold(
      endDrawer: const SideBar(),
      body: SafeArea(
        child: Column(
          children: [
            AppBarCustom(),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentGeometry.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/hero-section.svg",
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Selamat Datang di Jurnalku",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment
                                    .bottomCenter, // Mulai dari bawah (to-t)
                                end: Alignment.topCenter, // Ke atas
                                colors: [
                                  primaryColor, // from-primary/90
                                  secondaryColor, // to-secondary
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Apa itu jurnalku?",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Text(
                                  "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              vertical: 60,
                              horizontal: 40,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromARGB(79, 100, 116, 139),
                                width: 0.3,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: Offset(0, 0),
                                  color: const Color.fromARGB(16, 0, 0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.school,
                                  size: 50,
                                  color: const Color.fromARGB(255, 34, 0, 186),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Dirancang Khusus",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Memenuhi kebutuhan spesifik sekolah kami \ndengan fokus pada \nkemajuan siswa.",
                                  style: GoogleFonts.inter(
                                    color: Colors.grey[700],
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              vertical: 60,
                              horizontal: 40,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromARGB(79, 100, 116, 139),
                                width: 0.3,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: Offset(0, 0),
                                  color: const Color.fromARGB(16, 0, 0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.school_outlined,
                                  size: 50,
                                  color: const Color.fromARGB(255, 34, 0, 186),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Efektif",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                                  style: GoogleFonts.inter(
                                    color: Colors.grey[700],
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              vertical: 60,
                              horizontal: 40,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color.fromARGB(79, 100, 116, 139),
                                width: 0.3,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: Offset(0, 0),
                                  color: const Color.fromARGB(16, 0, 0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.school_outlined,
                                  size: 50,
                                  color: const Color.fromARGB(255, 34, 0, 186),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Terintegrasi",
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                                  style: GoogleFonts.inter(
                                    color: Colors.grey[700],
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 40),

                          Text(
                            "MENU APLIKASI",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),

                          SizedBox(height: 40),

                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 0.3,
                                color: Color.fromARGB(79, 100, 116, 139),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFdeeafd),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(
                                        Icons.person_outlined,
                                        color: Color(0xFF3a449f),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Profile",
                                          style: GoogleFonts.inter(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          "Lihat dan kelola profilmu disini.",
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: Colors.grey[800],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.grey[400],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Divider(height: 1, color: Colors.grey[300]),

                                SizedBox(height: 25),

                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileDiri(initialTab: 1),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFdeeafd),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.work,
                                          color: Color(0xFF3a449f),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Portofolio",
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Lihat dan kelola portofolio \nkompetensimu disini.",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              color: Colors.grey[800],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Divider(height: 1, color: Colors.grey[300]),

                                SizedBox(height: 25),

                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileDiri(initialTab: 2),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFdeeafd),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.star_border_sharp,
                                          color: Color(0xFF3a449f),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sertifikat",
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Lihat dan unduh sertifikat \nkompetensimu disini.",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              color: Colors.grey[800],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 30),

                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 0.3,
                                color: Color.fromARGB(79, 100, 116, 139),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            JurnalPembiasaan(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFdeeafd),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.bookmark_add,
                                          color: Color(0xFF3a449f),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Jurnal pembiasaan",
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Catat dan pantau \nkebiasaan harianmu disini",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              color: Colors.grey[800],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Divider(height: 1, color: Colors.grey[300]),

                                SizedBox(height: 25),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PermintaanSaksiPage(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFdeeafd),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.person,
                                          color: Color(0xFF3a449f),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Permintaan saksi",
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Lihat teman yang \nmengajukan saksi disini",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              color: Colors.grey[800],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Divider(height: 1, color: Colors.grey[300]),

                                SizedBox(height: 25),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProgressBelajar(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFdeeafd),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.bar_chart_outlined,
                                          color: Color(0xFF3a449f),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Progress",
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Lihat kemajuan dan \nkompetensimu disini.",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              color: Colors.grey[800],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Divider(height: 1, color: Colors.grey[300]),

                                SizedBox(height: 25),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CatatanSikap(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFdeeafd),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.notification_important_outlined,
                                          color: Color(0xFF3a449f),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Catatan Sikap",
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Lihat catatan sikap dan \nperilaku dari guru.",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              color: Colors.grey[800],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 40),

                          Text(
                            "Statistik Kompetensi",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),

                          SizedBox(height: 40),

                          CardBorderWithStatus(
                            title: "Materi diselesaikan",
                            icon: Icons.check_circle_outline_outlined,
                            iconBackgroundColor: Color(0xFFF0FDF4),
                            number: 1,
                            iconColor: Color(0xFF4dc265),
                            iconSize: 30,
                            numberColor: Colors.black,
                            iconPadding: EdgeInsetsGeometry.all(15),
                            status: "Selesai",
                            statusColor: Color(0xFF4dc265),
                          ),
                          SizedBox(height: 15),
                          CardBorderWithStatus(
                            title: "Pengajuan Pending",
                            icon: Icons.timer_outlined,
                            iconBackgroundColor: Color(0xFFFFF7ED),
                            number: 0,
                            iconColor: Color(0xFFF97316),
                            iconSize: 30,
                            numberColor: Colors.black,
                            iconPadding: EdgeInsetsGeometry.all(15),
                            status: "Pending",
                            statusColor: Color(0xFFEA580C),
                          ),
                          SizedBox(height: 15),
                          CardBorderWithStatus(
                            title: "Materi Hari ini",
                            icon: Icons.check_circle_outline_outlined,
                            iconBackgroundColor: Color(0xFFEFF6FF),
                            number: 1,
                            iconColor: Color(0xFF3B82F6),
                            iconSize: 30,
                            numberColor: Colors.black,
                            iconPadding: EdgeInsetsGeometry.all(15),
                            status: "Hari ini",
                            statusColor: Color(0xFF2563EB),
                          ),
                          SizedBox(height: 15),
                          CardBorderWithStatus(
                            title: "Materi revesi",
                            icon: Icons.check_circle_outline_outlined,
                            iconBackgroundColor: Color(0xFFEFF6FF),
                            number: 1,
                            iconColor: Color(0xFF3B82F6),
                            iconSize: 30,
                            numberColor: Colors.black,
                            iconPadding: EdgeInsetsGeometry.all(15),
                            status: "Revesi",
                            statusColor: Color(0xFF2563EB),
                          ),

                          SizedBox(height: 40),

                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.8,
                                color: Color.fromARGB(79, 100, 116, 139),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Progress Akademik",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 40),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Selesai",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Spacer(),
                                    Text(
                                      "0",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          43,
                                          85,
                                          255,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Pending",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Spacer(),
                                    Text(
                                      "0",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          109,
                                          138,
                                          255,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Belum",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Spacer(),
                                    Text(
                                      "0",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          173,
                                          190,
                                          255,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Hari ini",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Spacer(),
                                    Text(
                                      "0",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 30),

                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.8,
                                color: Color.fromARGB(79, 100, 116, 139),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Lihat Progress Kamu",
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          81,
                                          255,
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt,
                                      color: const Color.fromARGB(
                                        255,
                                        0,
                                        81,
                                        255,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  children: [
                                    Text(
                                      "Instalasi Postman",
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDCFCE7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "Approve",
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                            255,
                                            0,
                                            0,
                                            0,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Divider(height: 1, color: Colors.grey[300]),
                                SizedBox(height: 20),
                                Text(
                                  "Lihat semua kompetensi",
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 30),

                          Container(
                            padding: EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 189, 218, 255),
                            ),
                            child: Text(
                              "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                              style: GoogleFonts.inter(
                                color: Color(0xFF0F58CC),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
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
}
