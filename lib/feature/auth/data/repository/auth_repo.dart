import 'package:chef_app/core/error/exceptions.dart';
import 'package:chef_app/feature/auth/data/models/login_success_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<ServerException, LoginSuccessResponseModel>> login(
      {required String email, required String password});
}
