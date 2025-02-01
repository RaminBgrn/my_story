import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/feature/story/view/i_vertical_divider.dart';
import 'package:my_story/feature/story/view/tool_box_button.dart';
import 'package:my_story/feature/story/viewModel/story_view_model.dart';
import 'package:my_story/gen/assets.gen.dart';

class TextToolBox extends GetView<StoryViewModel> {
  const TextToolBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 55,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: myGrey[800],
      ),
      // child: FleatherToolbar.basic(controller: controller.getFleatherController),
      child: FleatherToolbar(
        children: [
          ToolBoxButton(
            iconPath: Assets.svgs.bold.path,
            onTap: () {
              controller.getFleatherController.formatSelection(ParchmentAttribute.bold);
            },
          ),
          ToolBoxButton(
            iconPath: Assets.svgs.textItalic.path,
            onTap: () {
              controller.getFleatherController.formatSelection(ParchmentAttribute.italic);
            },
          ),
          ToolBoxButton(
            iconPath: Assets.svgs.textUnderline.path,
            onTap: () {
              controller.getFleatherController.formatSelection(ParchmentAttribute.underline);
            },
          ),
          IVerticalDivider(),
          ToolBoxButton(
            iconPath: Assets.svgs.alignRight.path,
            onTap: () {
              controller.getFleatherController.formatSelection(ParchmentAttribute.right);
            },
          ),
          ToolBoxButton(
            iconPath: Assets.svgs.alignCenter.path,
            onTap: () {
              controller.getFleatherController.formatSelection(ParchmentAttribute.center);
            },
          ),
          ToolBoxButton(
            iconPath: Assets.svgs.alignLeft.path,
            onTap: () {
              controller.getFleatherController.formatSelection(ParchmentAttribute.left);
            },
          ),
          IVerticalDivider(),
          Assets.svgs.colorPicker.svg(
              width: 40, height: 40, colorFilter: ColorFilter.mode(myGrey[400]!, BlendMode.srcIn))
        ],
      ),
    );
  }
}
