import 'package:get/get.dart';
import 'package:my_story/constants/route_names.dart';
import 'package:my_story/feature/home/bind/home_binding.dart';
import 'package:my_story/feature/home/home_screen.dart';
import 'package:my_story/feature/story/bind/story_binding.dart';
import 'package:my_story/feature/story/story_screen.dart';

class RoutePath {
  static List<GetPage> getAppRoutes() {
    return [
      GetPage(
        name: RouteNames.home,
        page: () => HomeScreen(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: RouteNames.story,
        page: () => StoryScreen(),
        binding: StoryBinding(),
      )
    ];
  }
}
