import 'package:dio/dio.dart';
import 'package:gcmusic/core/utils/constants/endpoint.dart';

class BaseDio {
  Dio dio = Dio(BaseOptions(baseUrl: Endpoint.baseUrl));
}
