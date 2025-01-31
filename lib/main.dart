import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/constants/route_names.dart';
import 'package:my_story/constants/route_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Story',
      theme: ThemeData(
        scaffoldBackgroundColor: myGrey[900],
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteNames.home,
      getPages: RoutePath.getAppRoutes(),
    );
  }
}
