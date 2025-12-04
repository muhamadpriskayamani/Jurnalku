import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBorder extends StatelessWidget {
  const CardBorder({
    super.key,
    required this.title,
    required this.icon,
    required this.iconBackgroundColor,
    required this.number,
    required this.iconColor,
  });

  final String title;
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(128, 100, 116, 139),
          width: 0.5,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4B5563),
                ),
              ),
              Text(
                number.toString(),
                style: GoogleFonts.inter(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: iconBackgroundColor,
            ),
            child: Icon(icon, color: iconColor, size: 30),
          ),
        ],
      ),
    );
  }
}
