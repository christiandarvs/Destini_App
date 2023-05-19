import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback voidCallback;
  const CustomButton(
      {super.key,
      required this.label,
      required this.color,
      required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: voidCallback,
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(
        label,
        style: GoogleFonts.poppins(
            color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
