import 'package:chef_app/core/dataBase/api/end_points.dart';
import 'package:equatable/equatable.dart';

class LoginSuccessResponse extends Equatable {
  final String? message;
  final String? token;

  const LoginSuccessResponse({this.message, this.token});

  factory LoginSuccessResponse.fromJson(Map<String, dynamic> json) {
    return LoginSuccessResponse(
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
