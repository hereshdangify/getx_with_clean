import 'package:dio/dio.dart';
import 'package:gcmusic/core/constants/endpoint.dart';

class BaseDio {
  Dio dio = Dio(BaseOptions(baseUrl: Endpoint.baseUrl));
}
