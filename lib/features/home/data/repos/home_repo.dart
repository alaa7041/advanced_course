import 'package:advanced_course/features/home/data/api/home_api_services.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../model/specialization_response_model.dart';

class HomeRepo {
  final HomeApiServices homeApiServices;

  HomeRepo(this.homeApiServices);

  Future<ApiResult<SpecializationsResponseModel>> homeSpecializations() async {
    try {
      final response = await homeApiServices.getSpecializations();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
