import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/core/editor_text_config.dart';
import 'package:my_story/feature/story/viewModel/story_view_model.dart';

class TextBoxWidget extends GetView<StoryViewModel> {
  const TextBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: myGrey[900]!.withValues(alpha: 0.5),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RaminBGrn',
                        style: GoogleFonts.caveat(color: myGrey[100], fontSize: 16),
                      ),
                      Row(
                        spacing: 4,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: myGreen[500],
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: myOrange[500],
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: myRed[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 4, left: 4, right: 4),
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: myGrey[900]!.withValues(
                        alpha: 0.8,
                      ),
                    ),
                    child: QuillEditor.basic(
                      controller: controller.getQuillController,
                      configurations: QuillEditorConfigurations(
                        customStyles: DefaultStyles(
                          paragraph:
                              EditorTextConfig.setTextStyle(16, FontWeight.normal).blockStyle,
                          bold: EditorTextConfig.setTextStyle(18, FontWeight.bold).textStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
