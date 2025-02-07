import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_story/constants/material_color.dart';
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
      child: PageView(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToolBoxButton(
                        iconPath: Assets.svgs.bold.path,
                        onTap: controller.makeBold,
                      ),
                      ToolBoxButton(
                        iconPath: Assets.svgs.textItalic.path,
                        onTap: controller.makeItalic,
                      ),
                      ToolBoxButton(
                        iconPath: Assets.svgs.textUnderline.path,
                        onTap: controller.makeUnderLine,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToolBoxButton(
                        iconPath: Assets.svgs.alignLeft.path,
                        onTap: controller.changeDirectionRtl,
                      ),
                      ToolBoxButton(
                        iconPath: Assets.svgs.alignCenter.path,
                        onTap: controller.changeDirectionCenter,
                      ),
                      ToolBoxButton(
                        iconPath: Assets.svgs.alignRight.path,
                        onTap: controller.changeDirectionLtr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: ListView.builder(
              itemCount: controller.getTextColors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    controller.changeColor(controller.getTextColors[index]);
                  },
                  child: Container(
                    width: 46,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: controller.getTextColors[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
