import 'package:chef_app/core/dataBase/api/end_points.dart';
import 'package:equatable/equatable.dart';

class LoginSuccessResponseModel extends Equatable {
  final String? message;
  final String? token;

  const LoginSuccessResponseModel.LoginSuccessResponseModel(
      {this.message, this.token});

  factory LoginSuccessResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginSuccessResponseModel.LoginSuccessResponseModel(
      message: json[ApiKey.message] as String?,
      token: json[ApiKey.token] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        ApiKey.message: message,
        ApiKey.token: token,
      };

  @override
  List<Object?> get props => [message, token];
}
