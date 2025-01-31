import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/feature/home/view/home_button.dart';
import 'package:my_story/feature/home/viewModel/home_view_model.dart';

class HomeScreen extends GetView<HomeViewModel> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeButton(
            buttonColor: myOrange[200]!,
            buttonTitle: 'Story',
            onTap: () => controller.moveToStoryPage(),
          ),
        ],
      ),
    ));
  }
}
