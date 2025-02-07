import 'package:flutter/material.dart';
import 'package:my_story/constants/material_color.dart';

class IVerticalDivider extends StatelessWidget {
  const IVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            myGrey[900]!,
            myGrey[500]!,
            myGrey[900]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
