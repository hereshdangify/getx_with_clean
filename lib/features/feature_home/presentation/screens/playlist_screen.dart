import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gcmusic/core/constants/endpoint.dart';
import 'package:gcmusic/features/feature_home/presentation/widgets/artist_view_widget.dart';
import 'package:gcmusic/features/feature_home/presentation/widgets/music_handler_widget.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/playlist_controller.dart';

class PlaylistScreen extends GetView<PlaylistController> {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlaylistController>(builder: (_) {
      return Scaffold(
          backgroundColor: Color.fromARGB(255, 16, 0, 67),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Iconsax.arrow_left_2, color: Colors.white, size: 26),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
            title: Center(
                child: Text('Play List',
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.white, size: 28),
                onPressed: () {},
              ),
            ],
            backgroundColor: Color.fromARGB(255, 16, 0, 67),
          ),
          body: controller.loading
              ? Center(child: CircularProgressIndicator(color: Colors.white))
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      ArtistViewWidget(),
                      MusicHandlerWidget(),
                      SizedBox(
                        height: controller.entity.length * 120,
                        child: Container(
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.entity.length,
                            itemBuilder: (context, index) {
                              final playList = controller.entity[index];
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 81, 62, 142)),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child:
                                              //Image-------------------------------------------------------------------
                                              CachedNetworkImage(
                                            imageUrl: Endpoint.baseUrl +
                                                playList.pictureUrl.toString(),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            //Title-----------------------------------------------------------
                                            SizedBox(
                                              width: 200,
                                              child: Text(
                                                playList.trackName ?? '',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),

                                            //Name singer-----------------------------------------------------
                                            Text(
                                              playList.artistName ?? '',
                                              style: TextStyle(
                                                color: Colors.grey.shade300,
                                                fontSize: 20,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
    });
  }
}
