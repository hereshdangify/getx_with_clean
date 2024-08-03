import 'package:dio/dio.dart';
import 'package:gcmusic/features/feature_home/data/data_Source/remote/api_provider.dart';
import 'package:gcmusic/features/feature_home/data/repositories_imp/playlist_repository_imp.dart';
import 'package:gcmusic/features/feature_home/domain/use_cases/get_playlist_usecase.dart';
import 'package:get/get.dart';

import '../controllers/playlist_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut(() => ApiProvider());
    Get.lazyPut(() => PlaylistRepositoryImp(ApiProvider()));
    Get.lazyPut(() => GetPlaylistUseCaseImp(Get.find<PlaylistRepositoryImp>()));
    Get.lazyPut(
      () => PlaylistController(GetPlaylistUseCaseImp(
        PlaylistRepositoryImp(
          ApiProvider(),
        ),
      )),
    );
  }
}
