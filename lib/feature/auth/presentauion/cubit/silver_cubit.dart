import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/feature/auth/data/repo/silver_repo.dart';
import 'package:goldy/feature/auth/presentauion/cubit/silver_state.dart';

class SilverCubit extends Cubit<SilverState> {
  final SilverRepo silverRepo;

  SilverCubit(this.silverRepo) : super(SilverInitial());

  Future<void> getSilver() async {
    emit(SilverLoading());
    final response = await silverRepo.getSilver();
    response.fold(
      (error) => emit(SilverError(error)),
      (silver) => emit(SilverSuccess(silver)),
    );
  }
}