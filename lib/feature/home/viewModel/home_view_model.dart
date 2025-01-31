import 'package:get/get.dart';
import 'package:my_story/constants/route_names.dart';

class HomeViewModel extends GetxController {
  void moveToStoryPage() {
    Get.toNamed(RouteNames.story);
  }
}
