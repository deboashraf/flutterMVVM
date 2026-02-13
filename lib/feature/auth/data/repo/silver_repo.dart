import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constans.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/feature/auth/data/model/gold_model.dart';

class SilverRepo {
  Future<Either<String, GoldModel>> getSilver() async {
    try {
      final response = await DioHelper.getData(
        endPoint: ApiConstans.sliverEndpoint, // XAG
      );
      return right(GoldModel.fromJson(response.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}