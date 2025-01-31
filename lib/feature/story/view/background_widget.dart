import 'package:flutter/material.dart';
import 'package:my_story/gen/assets.gen.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: PageView(
        children: [
          Assets.images.bg.image(fit: BoxFit.cover),
          Assets.images.bgTwo.image(fit: BoxFit.cover),
          Assets.images.bgThree.image(fit: BoxFit.cover),
        ],
      ),
    );
  }
}
