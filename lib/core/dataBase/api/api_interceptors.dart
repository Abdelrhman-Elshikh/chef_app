import 'package:chef_app/core/dataBase/api/end_points.dart';
import 'package:chef_app/core/dataBase/cache/cache_helper.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:dio/dio.dart';


class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] = sl<CacheHelper>().getData(key: ApiKey.token) != null
        ? 'FOODAPI ${sl<CacheHelper>().getData(key: ApiKey.token)}'
        : null;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
