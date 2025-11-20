import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBorderWithStatus extends StatelessWidget {
  const CardBorderWithStatus({
    super.key,
    required this.title,
    required this.icon,
    required this.iconBackgroundColor,
    required this.number,
    required this.iconColor,
    required this.iconSize,
    required this.numberColor,
    required this.iconPadding,
    required this.status,
    required this.statusColor,
  });

  final String title;
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  final double iconSize;
  final EdgeInsetsGeometry iconPadding;
  final int number;
  final Color numberColor;
  final String status;
  final Color statusColor;

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
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 105, 120, 138),
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
                padding: iconPadding,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: iconBackgroundColor,
                ),
                child: Icon(icon, color: iconColor, size: iconSize),
              ),
            ],
          ),
          SizedBox(height: 7),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: statusColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(width: 7),
                  Text(
                    status.toString(),
                    style: GoogleFonts.inter(
                      color: statusColor,
                      fontSize: 14
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
