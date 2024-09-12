import 'package:advanced_course/core/networking/api_error_handler.dart';
import 'package:advanced_course/core/networking/api_result.dart';
import 'package:advanced_course/core/networking/api_service.dart';
import 'package:advanced_course/features/login/data/models/login_request_body.dart';
import 'package:advanced_course/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo( this.apiService);


  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {

    try{
     final response = await apiService.login(loginRequestBody);
     return ApiResult.success(response);
   }catch(e){
     return ApiResult.failure(ErrorHandler.handle(e));
   }
  }
}
