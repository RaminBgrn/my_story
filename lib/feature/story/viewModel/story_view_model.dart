import 'dart:io';
import 'dart:math';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class StoryViewModel extends GetxController {
  late QuillController _controller;
  QuillController get getQuillController => _controller;

  late WidgetsToImageController _widgetsToImageController;
  WidgetsToImageController get getWidgetsToImageController => _widgetsToImageController;

  bool _toolBarFlag = true;
  bool get isToolBarVisible => _toolBarFlag;

  final List<Color> _textColor = [
    myGrey[300]!,
    myRed[500]!,
    myGreen[400]!,
    myRose[300]!,
    myIndigo[400]!,
    myPurple[400]!,
    myOrange[300]!,
  ];
  List<Color> get getTextColors => _textColor;

  @override
  void onInit() {
    _controller = QuillController.basic();
    _controller.formatSelection(Attribute.rtl);
    _widgetsToImageController = WidgetsToImageController();
    super.onInit();
  }

  void changeColor(Color color) {
    _controller.formatText(
      _controller.selection.baseOffset,
      (_controller.selection.extentOffset - _controller.selection.baseOffset),
      ColorAttribute("#${colorToHex(color)}"),
    );
  }

  void changeDirectionRtl() {
    _controller.formatSelection(Attribute.rightAlignment);
  }

  void changeDirectionLtr() {
    _controller.formatSelection(Attribute.leftAlignment);
  }

  void changeDirectionCenter() {
    _controller.formatSelection(Attribute.centerAlignment);
  }

  void makeBold() {
    final Map<String, Attribute<dynamic>> style = _controller.getSelectionStyle().attributes;
    _controller.formatSelection(
      style.containsKey('bold') ? Attribute.clone(Attribute.bold, null) : Attribute.bold,
    );
  }

  void makeItalic() {
    final Map<String, Attribute<dynamic>> style = _controller.getSelectionStyle().attributes;
    _controller.formatSelection(
      style.containsKey('italic') ? Attribute.clone(Attribute.italic, null) : Attribute.italic,
    );
  }

  void makeUnderLine() {
    final Map<String, Attribute<dynamic>> style = _controller.getSelectionStyle().attributes;
    _controller.formatSelection(
      style.containsKey('underline')
          ? Attribute.clone(Attribute.underline, null)
          : Attribute.underline,
    );
  }

  void changeToolBarVisibility() {
    _toolBarFlag = !_toolBarFlag;
    Get.focusScope!.unfocus();
    update();
  }

  void takePhoto() async {
    final data = await _widgetsToImageController.capture();
    final fileName = Random().nextInt(1000);
    final path =
        await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_PICTURES);
    if (data == null) return;
    File takenImage = File("$path/$fileName.png");
    takenImage.writeAsBytesSync(data);
  }
}
