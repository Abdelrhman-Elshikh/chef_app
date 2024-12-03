import 'package:chef_app/core/dataBase/api/end_points.dart';
import 'package:equatable/equatable.dart';

class LoginDataModel extends Equatable {
  final String? email;
  final String? password;

  const LoginDataModel({this.email, this.password});

  factory LoginDataModel.fromJson(Map<String, dynamic> json) => LoginDataModel(
        email: json[ApiKey.email] as String?,
        password: json[ApiKey.password] as String?,
      );

  Map<String, dynamic> toJson() => {
        ApiKey.email: email,
        ApiKey.password: password,
      };

  @override
  List<Object?> get props => [email, password];
}
