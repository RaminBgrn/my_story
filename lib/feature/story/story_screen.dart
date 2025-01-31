import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:my_story/feature/story/view/background_widget.dart';
import 'package:my_story/feature/story/view/text_box_widget.dart';

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
            TextBoxWidget(),
          ],
        ),
      ),
    );
  }
}
