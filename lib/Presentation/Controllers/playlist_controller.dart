import 'package:gcmusic/Domain/Entities/playlist.dart';
import 'package:gcmusic/Domain/UseCases/get_playlist.dart';
import 'package:get/get.dart';

class PlaylistController extends GetxController {
  final GetPlaylist getPlaylist;
  PlaylistController({required this.getPlaylist});

  var playLists = <PlayList>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPlayList();
  }

  void fetchPlayList() async {
    isLoading(true);
    try {
      final result = await getPlaylist();
      playLists.assignAll(result);
    } finally {
      isLoading(false);
    }
  }
}
