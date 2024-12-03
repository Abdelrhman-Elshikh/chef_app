import 'package:chef_app/core/dataBase/api/api_consumer.dart';
import 'package:chef_app/core/dataBase/api/end_points.dart';
import 'package:chef_app/core/error/exceptions.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:chef_app/feature/auth/data/models/login_data_model.dart';
import 'package:chef_app/feature/auth/data/models/login_success_response.dart';
import 'package:chef_app/feature/auth/data/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<ServerException, LoginSuccessResponse>> login(
      {required String email, required String password}) async {
    try {
      var result =
          await sl<ApiConsumer>().post(EndPoint.baseUrl + EndPoint.chefSignIn,
              data: LoginDataModel(
                email: email,
                password: password,
              ).toJson());
      return right(LoginSuccessResponse.fromJson(result));
    } on ServerException catch (error) {
      return Left(error);
    }
  }
}
