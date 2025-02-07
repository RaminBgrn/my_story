import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/gen/fonts.gen.dart';

class EditorTextConfig {
  static ({DefaultTextBlockStyle blockStyle, TextStyle textStyle}) setTextStyle(
      double fontSize, FontWeight fontWeight) {
    return (
      blockStyle: DefaultTextBlockStyle(
        TextStyle(
          fontFamily: FontFamily.mikhak,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: myGrey[300],
        ),
        HorizontalSpacing.zero,
        VerticalSpacing.zero,
        VerticalSpacing.zero,
        BoxDecoration(),
      ),
      textStyle: TextStyle(
        fontFamily: FontFamily.mikhak,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: myGrey[300],
      ),
    );
  }
}
