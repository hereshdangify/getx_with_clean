import 'package:flutter/material.dart';
import 'package:gcmusic/features/feature_home/domain/Application/dependency_injection.dart';
import 'package:gcmusic/features/feature_home/presentation/screens/playlist_screen.dart';

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
      debugShowCheckedModeBanner: false,
      home: PlaylistScreen(),
    );
  }
}
