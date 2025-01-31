import 'package:get/get.dart';
import 'package:my_story/feature/story/viewModel/story_view_model.dart';

class StoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoryViewModel());
  }
}
