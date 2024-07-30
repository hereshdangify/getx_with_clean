import 'package:dio/dio.dart';
import 'package:gcmusic/core/utils/constants/endpoint.dart';

class ApiProvider {
  final Dio dio = Dio();

  var getTrack = Endpoint.getTrack;

  Future<dynamic> fetchMusicList() async {
    var response = await dio.post(Endpoint.baseUrl + getTrack);
    return response;
  }
}
