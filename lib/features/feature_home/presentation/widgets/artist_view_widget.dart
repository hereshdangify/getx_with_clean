import 'package:flutter/material.dart';
import 'package:gcmusic/features/feature_home/presentation/controllers/playlist_controller.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ArtistViewWidget extends GetView<PlaylistController> {
  const ArtistViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlaylistController>(builder: (_) {
      return SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                //Name singer-----------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Sawza',
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),

                      Spacer(),
                      //Icons------------------------------------------------------

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.lyrics, color: Colors.white, size: 24),
                      ),
                      Icon(Iconsax.add_square, color: Colors.white, size: 24),
                      SizedBox(width: 10),
                      Icon(Iconsax.heart, color: Colors.white, size: 24),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Hasan Zirak',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
