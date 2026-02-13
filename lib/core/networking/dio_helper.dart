import 'package:dio/dio.dart';
import 'package:goldy/core/networking/api_constans.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstans.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 40),
        receiveTimeout: Duration(seconds: 40),
      ),
    );
  }
  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,

  })async{
    final response =await dio.get(endPoint,queryParameters: query);
    return response;
  }
}
