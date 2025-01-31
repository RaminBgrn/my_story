import 'package:flutter/material.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/gen/fonts.gen.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Story Screen',
          style: TextStyle(
            fontFamily: FontFamily.mikhak,
            color: myGrey[200],
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
