import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/feature/story/view/background_widget.dart';
import 'package:my_story/feature/story/view/text_box_widget.dart';
import 'package:my_story/feature/story/view/text_tool_box.dart';
import 'package:my_story/feature/story/viewModel/story_view_model.dart';
import 'package:my_story/gen/assets.gen.dart';

class StoryScreen extends GetView<StoryViewModel> {
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
            GetBuilder<StoryViewModel>(builder: (ctl) {
              return ctl.isToolBarVisible
                  ? Positioned.fill(
                      top: 40,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: TextToolBox(),
                      ),
                    )
                  : SizedBox();
            }),
            TextBoxWidget(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 12,
        children: [
          FloatingActionButton(
              heroTag: "btn1",
              backgroundColor: myGrey[900],
              child: Assets.svgs.takePhoto.svg(
                width: 35,
                height: 35,
                colorFilter: ColorFilter.mode(
                  myGrey[400]!,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                controller.changeColor(myRed[500]!);
              }),
          FloatingActionButton(
              heroTag: "btn2",
              backgroundColor: myGrey[900],
              child: Assets.svgs.menu.svg(
                width: 35,
                height: 35,
                colorFilter: ColorFilter.mode(
                  myGrey[400]!,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                controller.changeToolBarVisibility();
              }),
        ],
      ),
    );
  }
}
