import 'package:chef_app/core/error/exceptions.dart';
import 'package:chef_app/feature/auth/data/models/login_success_response.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<ServerException, LoginSuccessResponse>> login(
      {required String email, required String password});
}
