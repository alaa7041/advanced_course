

import 'package:advanced_course/features/home/data/model/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiServices {

  factory HomeApiServices(Dio dio) = _HomeApiServices;

  @GET(ApiConstants.specializations)
  Future<SpecializationsResponseModel> getSpecializations();

}