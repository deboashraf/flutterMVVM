import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constans.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/feature/auth/data/model/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGold() async {
    try {
      final response = await DioHelper.getData(
        endPoint: ApiConstans.goldEndpoint,
      );

      return right(GoldModel.fromJson(response.data));
    } on DioException catch (e) {
      // لو السيرفر رجع 429
      if (e.response?.statusCode == 429) {
        return left('طلبات كتير جدًا على السيرفر، استنى دقيقة وجرب تاني.');
      }

      // أي status code تاني
      final status = e.response?.statusCode;
      return left('مشكلة في الاتصال بالسيرفر (كود: $status)');
    } catch (e) {
      return left('خطأ غير متوقع: $e');
    }
  }
}