import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_story/constants/material_color.dart';

class ToolBoxButton extends StatefulWidget {
  final String iconPath;
  final VoidCallback onTap;
  const ToolBoxButton({
    required this.iconPath,
    required this.onTap,
    super.key,
  });

  @override
  State<ToolBoxButton> createState() => _ToolBoxButtonState();
}

class _ToolBoxButtonState extends State<ToolBoxButton> {
  late bool _isSelected;

  @override
  void initState() {
    _isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isSelected = !_isSelected;
        setState(() {});
        widget.onTap();
      },
      child: SvgPicture.asset(
        widget.iconPath,
        width: 40,
        height: 40,
        colorFilter: ColorFilter.mode(
          _isSelected ? myGreen[600]! : myGrey[400]!,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
