import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String gender;
  final String passwordConfirmation;
  @JsonKey(name: "password_confirmation")

  RegisterRequestBody(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.gender,
      required this.passwordConfirmation});

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
