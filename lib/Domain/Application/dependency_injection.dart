import 'package:dio/dio.dart';
import 'package:gcmusic/Presentation/Controllers/playlist_controller.dart';
import 'package:gcmusic/Data/Repositories/playlist_repository_imp.dart';
import 'package:gcmusic/Data/Source/remote_data_source.dart';
import 'package:gcmusic/Domain/UseCases/get_playlist.dart';
import 'package:get/get.dart';

void initDependencies() {
  Get.lazyPut(() => Dio());
  Get.lazyPut(() => RemoteDataSource(dio: Get.find<Dio>()));
  Get.lazyPut(() => PlaylistRepositoryImp());
  Get.lazyPut(() => GetPlaylist(repository: Get.find<PlaylistRepositoryImp>()));
  Get.lazyPut(() => PlaylistController(getPlaylist: Get.find<GetPlaylist>()));
}
