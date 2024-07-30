import 'package:gcmusic/core/resources/data_state.dart';
import 'package:gcmusic/features/feature_home/domain/entities/playlist_entity.dart';

import '../repositories/playlist_repository.dart';

class GetPlaylistUseCase {
  final PlaylistRepository repository;

  GetPlaylistUseCase(this.repository);

  Future<DataState<List<PlayListEntity>>> execute() {
    return repository.fetchPlayListData();
  }

  // @override
  // Future<DataState<List<PlayListEntity>>> call(List<PlayListEntity> playEntity) {
  //   return repository.fetchPlayListData(playEntity);
  // }
}
