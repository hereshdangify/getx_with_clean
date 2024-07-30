import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gcmusic/core/resources/data_state.dart';
import 'package:gcmusic/features/feature_home/data/data_Source/remote/api_provider.dart';
import 'package:gcmusic/features/feature_home/data/models/playlist_model.dart';
import 'package:gcmusic/features/feature_home/domain/entities/playlist_entity.dart';
import 'package:gcmusic/features/feature_home/domain/repositories/playlist_repository.dart';

class PlaylistRepositoryImp extends PlaylistRepository {
  final ApiProvider apiProvider;
  PlaylistRepositoryImp(this.apiProvider);

  @override
  Future<DataState<List<PlayListEntity>>> fetchPlayListData() async {
    try {
      // Response is Dio
      Response response = await apiProvider.fetchMusicList();
      log('jhmngvhkg');
      if (response.statusCode == 200) {
        List<PlayListEntity> playListEntity =
            PlayListModel.getPlayListModelList(response.data['data']);
        return DataSuccess(playListEntity);
      } else {
        return DataFailed('Something Went Wrong');
      }
    } catch (e) {
      return DataFailed('Please check your connection');
    }
  }
}
