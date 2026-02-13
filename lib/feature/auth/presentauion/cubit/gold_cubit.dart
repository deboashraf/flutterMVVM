
import 'package:goldy/feature/auth/data/repo/gold_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/feature/auth/presentauion/cubit/gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitial());
 Future<void> getGold() async {
  emit(Goldloading());
   final response  = await goldRepo.getGold();
response.fold((Error) {
  emit(GoldError(Error));
}, (Gold) {
  emit(Goldsucess(Gold));
}
 );}
 
}