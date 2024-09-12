import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/networking/api_error_handler.dart';
import '../data/model/specialization_response_model.dart';
part 'home_specialization_state.freezed.dart';

@freezed
class HomeSpecializationState<T> with _$HomeSpecializationState<T> {

  const factory HomeSpecializationState.initial() = _HomeSpecializationInitial;
  const factory HomeSpecializationState.specializationLoading() = SpecializationLoading;
  const factory HomeSpecializationState.specializationSuccess(SpecializationsResponseModel specializationDataList) = SpecializationSuccess;
  const factory HomeSpecializationState.specializationError(ErrorHandler errorHandler) = SpecializationError;

}