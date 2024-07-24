import 'package:dio/dio.dart';
import 'package:gcmusic/Data/Models/playlist_model.dart';

class RemoteDataSource {
  final Dio dio;

  RemoteDataSource({required this.dio});

  Future<List<PlayListModel>> fetchMusicList() async {
    final response = await dio.post('https://dangify.net/api/forinterns');

    if (response.statusCode == 200) {
      List jsonResponse = response.data['data'];
      return jsonResponse
          .map((music) => PlayListModel.fromJson(music))
          .toList();
    } else {
      throw Exception('Failed to load playlist');
    }
  }
}
