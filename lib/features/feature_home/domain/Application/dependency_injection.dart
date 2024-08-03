// import 'package:dio/dio.dart';
// import 'package:gcmusic/features/feature_home/data/data_Source/remote/api_provider.dart';
// import 'package:gcmusic/features/feature_home/domain/use_cases/get_playlist_usecase.dart';
// import 'package:get/get.dart';
// import 'package:get_it/get_it.dart';

// import '../../data/repositories_imp/playlist_repository_imp.dart';
// import '../../presentation/controllers/playlist_controller.dart';

// GetIt locator = GetIt.instance;

// void initDependencies() {
//   // Get.lazyPut(() => Dio());
//   // Get.lazyPut(() => ApiProvider());
//   // Get.lazyPut(() => PlaylistRepositoryImp(ApiProvider()));
//   // Get.lazyPut(() => GetPlaylistUseCaseImp(Get.find<PlaylistRepositoryImp>()));
//   // Get.lazyPut(
//   //   () => PlaylistController(GetPlaylistUseCaseImp(
//   //     PlaylistRepositoryImp(
//   //       ApiProvider(),
//   //     ),
//   //   )),
//   // );

//   // locator.registerSingleton<ApiProvider>(ApiProvider(dio: Get.put(Dio())));
//   // locator
//   //     .registerSingleton<PlaylistRepository>(PlaylistRepositoryImp(locator()));
//   // locator.registerSingleton<GetPlaylistUseCase>(GetPlaylistUseCase(locator()));
//   // locator.registerSingleton<PlaylistController>(Get.put(PlaylistController(locator())));
// }
