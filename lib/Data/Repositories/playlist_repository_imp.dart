import 'package:gcmusic/Data/Source/remote_data_source.dart';
import 'package:gcmusic/Domain/Entities/playlist.dart';

import 'package:gcmusic/Domain/Repositories/playlist_repository.dart';
import 'package:get/get.dart';

class PlaylistRepositoryImp implements PlaylistRepository {
  final RemoteDataSource remoteDataSource = Get.find();

  @override
  Future<List<PlayList>> getPlaylists() async {
    final musicList = await remoteDataSource.fetchMusicList();
    return musicList
        .map((model) => PlayList(
              trackUrl: model.trackUrl,
              pictureUrl: model.pictureUrl,
              trackId: model.trackId,
              trackName: model.trackName,
              artistName: model.artistName,
              albumName: model.albumName,
              listenCounter: model.listenCounter,
            ))
        .toList();
  }
}
