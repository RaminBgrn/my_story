import 'package:flutter/material.dart';
import 'package:my_story/feature/story/view/background_widget.dart';
import 'package:my_story/feature/story/view/text_box_widget.dart';
import 'package:my_story/feature/story/view/text_tool_box.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            BackgroundWidget(),
            Positioned.fill(
              top: 40,
              child: Align(
                alignment: Alignment.topCenter,
                child: TextToolBox(),
              ),
            ),
            TextBoxWidget(),
          ],
        ),
      ),
    );
  }
}
