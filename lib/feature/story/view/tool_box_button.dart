import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_story/constants/material_color.dart';

class ToolBoxButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;
  const ToolBoxButton({
    required this.iconPath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        iconPath,
        width: 40,
        height: 40,
        colorFilter: ColorFilter.mode(
          myGrey[400]!,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
