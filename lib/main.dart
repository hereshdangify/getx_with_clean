import 'package:flutter/material.dart';
import 'package:gcmusic/Presentation/Pages/playlist_page.dart';
import 'package:gcmusic/Domain/Application/dependency_injection.dart';

import 'package:get/get.dart';

void main() {
  initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PlaylistPage(),
    );
  }
}
