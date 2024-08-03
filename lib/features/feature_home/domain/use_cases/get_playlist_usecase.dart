import 'package:gcmusic/core/data/data_state.dart';
import 'package:gcmusic/features/feature_home/domain/entities/playlist_entity.dart';

import '../repositories/playlist_repository.dart';

class GetPlaylistUseCaseImp {
  final PlaylistRepository repository;
  GetPlaylistUseCaseImp(this.repository);

  Future<DataState<List<PlayListEntity>>> execute() {
    return repository.fetchPlayListData();
  }
}
