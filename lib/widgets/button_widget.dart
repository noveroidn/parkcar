import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_youtube/theme/app_pallete.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const ButtonWidget({super.key, required this.text, required this.ontap,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppPallete.colorTextPrimary,
        backgroundColor: AppPallete.white,
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 12
        ),
        textStyle: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        )
      ),
      child: Text(text),
    );
  }
}
