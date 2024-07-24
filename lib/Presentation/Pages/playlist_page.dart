import 'package:flutter/material.dart';
import 'package:gcmusic/Presentation/Controllers/playlist_controller.dart';
import 'package:get/get.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PlaylistController controller = Get.find();

    return Scaffold(
      appBar: AppBar(title: Text('Play List')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.playLists.length,
          itemBuilder: (context, index) {
            // final play = controller.playLists[index];
            return ListTile(
              title: Text(controller.playLists[index].trackName),
              subtitle: Text(controller.playLists[index].artistName),
            );
          },
        );
      }),
    );
  }
}
