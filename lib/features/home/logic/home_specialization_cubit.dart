import 'package:bloc/bloc.dart';
import '../data/repos/home_repo.dart';
import 'home_specialization_state.dart';


class HomeSpecializationCubit extends Cubit<HomeSpecializationState> {
  final HomeRepo homeRepo;

  HomeSpecializationCubit(this.homeRepo) : super(const HomeSpecializationState.initial());

  void getSpecializations() async {
    emit(const HomeSpecializationState.specializationLoading());
    final response = await homeRepo.homeSpecializations();
    response.when(success: (data) {
      emit(HomeSpecializationState.specializationSuccess(data));
    }, failure: (errorHandler) {
      emit(HomeSpecializationState.specializationError(errorHandler));
    });
  }

}
