import 'package:goldy/feature/auth/data/model/gold_model.dart';

abstract class SilverState {}

class SilverInitial extends SilverState {}

class SilverLoading extends SilverState {}

class SilverSuccess extends SilverState {
  final GoldModel silverModel;
  SilverSuccess(this.silverModel);
}

class SilverError extends SilverState {
  final String errmessage;
  SilverError(this.errmessage);
}