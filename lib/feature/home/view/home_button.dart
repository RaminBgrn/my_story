import 'package:flutter/material.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/gen/fonts.gen.dart';

class HomeButton extends StatelessWidget {
  final String buttonTitle;
  final Color buttonColor;
  final VoidCallback onTap;
  const HomeButton(
      {required this.buttonColor, required this.buttonTitle, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: myGrey[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(
            width: 1,
            color: buttonColor.withValues(alpha: 0.5),
          ),
        ),
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
          fontFamily: FontFamily.mikhak,
          fontWeight: FontWeight.w500,
          color: buttonColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
