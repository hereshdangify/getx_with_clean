import 'package:gcmusic/core/data/data_state.dart';
import 'package:gcmusic/features/feature_home/domain/entities/playlist_entity.dart';

abstract class PlaylistRepository {
  Future<DataState<List<PlayListEntity>>> fetchPlayListData();
}
