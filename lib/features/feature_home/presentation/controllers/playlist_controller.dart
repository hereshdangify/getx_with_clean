import 'package:gcmusic/core/constants/routing.dart';
import 'package:gcmusic/core/data/data_state.dart';
import 'package:gcmusic/features/feature_home/domain/entities/playlist_entity.dart';
import 'package:gcmusic/features/feature_home/domain/use_cases/get_playlist_usecase.dart';
import 'package:get/get.dart';

class PlaylistController extends GetxController {
  // late PlaylistRepository repo;
  final GetPlaylistUseCaseImp getPlaylistUseCase;
  List<PlayListEntity> entity = [];

  bool loading = false;

  PlaylistController(this.getPlaylistUseCase);

  @override
  void onInit() {
    fetchPlayList();
    super.onInit();
  }

  Future<void> fetchPlayList() async {
    loading = true;
    DataState<List<PlayListEntity>> datastate =
        await getPlaylistUseCase.execute();
    if (datastate is DataSuccess) {
      entity = datastate.data!;
      Get.toNamed(Routings().home);

      update();
      loading = false;
    }
    if (datastate is DataFailed) {
      datastate.error!;
    }
    update();
  }
}
