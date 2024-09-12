
import 'package:advanced_course/features/register/data/models/register_request_body.dart';
import 'package:advanced_course/features/register/data/models/register_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class RegisterRepo{

  final ApiService apiService;

  RegisterRepo(this.apiService);


  Future<ApiResult<RegisterResponse>> register(RegisterRequestBody registerRequestBody) async {
    try{
      final response = await apiService.register(registerRequestBody);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}