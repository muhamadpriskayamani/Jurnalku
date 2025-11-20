import 'package:flutter/material.dart';

class ProgressBelajar extends StatelessWidget {
  const ProgressBelajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.home_outlined, size: 18, color: Colors.black45),
            SizedBox(width: 6),
            Icon(Icons.chevron_right, size: 18, color: Colors.black38),
            SizedBox(width: 6),

            // RESPONSIVE breadcrumb
            Builder(
              builder: (context) {
                double width = MediaQuery.of(context).size.width;
                if (width < 500) return SizedBox.shrink();
                return Text(
                  "Panduan Penggunaan",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                );
              },
            ),
          ],
        ),

        actions: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Muhamad Priska Yamani",
                    style: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "PPLG XII-5",
                    style: TextStyle(fontSize: 10.5, color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(width: 8),

              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),

              SizedBox(width: 4),
              Icon(Icons.keyboard_arrow_down_rounded,
                  size: 20, color: Colors.black54),
              SizedBox(width: 10),
            ],
          )
        ],
      ),

      body: Center(
        child: Text(
          "",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
