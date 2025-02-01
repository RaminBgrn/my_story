import 'package:fleather/fleather.dart';
import 'package:get/get.dart';

class StoryViewModel extends GetxController {
  final FleatherController _fleatherController = FleatherController();
  FleatherController get getFleatherController => _fleatherController;
}
