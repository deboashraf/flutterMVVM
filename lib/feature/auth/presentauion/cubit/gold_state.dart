import 'package:goldy/feature/auth/data/model/gold_model.dart';

abstract class GoldState {}

class GoldInitial extends GoldState {}


class Goldsucess extends GoldState {
  final GoldModel goldModel;
  Goldsucess(this.goldModel);
}

class GoldError extends GoldState {
  final String errmessage;
  GoldError(this.errmessage);
}

class Goldloading extends GoldState {}