import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PermintaanSaksiPage extends StatelessWidget {
  const PermintaanSaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    //tanggal dan hari
    final now = DateTime.now();
    final formattedDate = DateFormat('EEEE, d MMMM y', 'en_US').format(now);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),

              // top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.home, size: 27, color: Colors.black87),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Nisa Auliani",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "PPLG XII-5",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              //  TITLE
              const Text(
                "Permintaan Saksi",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              const Text(
                "Kelola permintaan menjadi saksi dari siswa lain",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),

              const SizedBox(height: 20),

              //  DATE CHIP
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFE9F2FF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  formattedDate,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1E6FFB),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // //  TABLE HEADER
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     Expanded(
              //       child: Text(
              //         "PENGIRIM",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, fontSize: 13),
              //       ),
              //     ),
              //     Expanded(
              //       child: Text(
              //         "TANGGAL",
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, fontSize: 13),
              //       ),
              //     ),
              //     Expanded(
              //       child: Text(
              //         "KONFIRMASI",
              //         textAlign: TextAlign.right,
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, fontSize: 13),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 20),

              // // EMPTY BOX
              // Expanded(
              //   child: Container(
              //     width: double.infinity,
              //     padding: const EdgeInsets.all(30),
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(18),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.05),
              //           blurRadius: 10,
              //           offset: const Offset(0, 4),
              //         )
              //       ],
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         Icon(
              //           Icons.groups_outlined,
              //           size: 50,
              //           color: Colors.grey,
              //         ),
              //         SizedBox(height: 15),
              //         Text(
              //           "Belum ada permintaan",
              //           style: TextStyle(
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //         SizedBox(height: 8),
              //         Text(
              //           "Belum ada yang mengirim permintaan saksi kepada Anda",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //             color: Colors.grey,
              //             fontSize: 13,
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // )
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ExpansionTile(
                  collapsedBackgroundColor: Colors.grey.shade100,
                  backgroundColor: Colors.grey.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),

                  //  title
                  title: Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey.shade400,
                        child: const Icon(Icons.person, color: Colors.white),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "NIsa Auliani",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "PPLG XII-5",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // CHILDREN
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.calendar_today,
                                size: 18,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Senin, 20 November 2025",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          Row(
                            children: const [
                              Icon(Icons.book, size: 18, color: Colors.grey),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "Pemantapan Widget Flutter",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          //  BUTTON ROW
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Button Tolak
                              Expanded(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.red.shade100,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Tolak",
                                      style: TextStyle(
                                        color: Colors.red.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),

                              // Button Terima
                              Expanded(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Terima",
                                      style: TextStyle(
                                        color: Colors.green.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
