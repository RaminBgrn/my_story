import 'package:get/get.dart';
import 'package:my_story/feature/home/viewModel/home_view_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
  }
}
