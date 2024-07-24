import 'package:dio/dio.dart';
import 'package:gcmusic/Core/Constans/endpoint.dart';

class BaseDio {
  Dio dio = Dio(BaseOptions(baseUrl: Endpoint.base));
}
