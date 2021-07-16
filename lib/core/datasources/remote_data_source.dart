import 'package:dio/dio.dart';
import 'package:weather_app_task/core/http/api_provider.dart';
import 'package:weather_app_task/core/http/models_factory.dart';
import 'package:weather_app_task/core/responses/api_response.dart';
import 'package:weather_app_task/core/errors/custom_error.dart';
import 'package:weather_app_task/core/result/result.dart';
import '../constants.dart';

abstract class RemoteDataSource{

  Future<Result<Data>>
  callApi<Data,Response extends ApiResponse<Data>>({
    required String  responseStr,
    required Response Function(Map<String, dynamic>) converter,
    required HttpMethod method,
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    CancelToken? cancelToken,
  }) async {

    ModelsFactory.getInstance.registerModel(responseStr, converter);

    final Map<String, String> headers = {};

    final response = await ApiProvider.sendObjectRequest<Response>(
      method: method,
      url: url,
      headers: headers,
      queryParameters: queryParameters??{},
      data: data??{},
      cancelToken: cancelToken,
    );
    if (response.hasErrorOnly) {
      return Result(error: response.error);
    }
    else {
      final resValue = response.data!;
      if (resValue.cod != null && resValue.cod =='200' &&resValue.result !=null)
        return Result(data:resValue.result);
      else
        return Result(error:CustomError(message: resValue.message));
    }
  }
}