import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:weather_app_task/core/errors/cancel_error.dart';
import 'package:weather_app_task/core/errors/connection_error.dart';
import 'package:weather_app_task/core/errors/http_error.dart';
import 'package:weather_app_task/core/result/result.dart';
import '../constants.dart';
import 'models_factory.dart';
import '../errors/base_error.dart';
// import '../errors/cancel_error.dart';
// import '../errors/http_error.dart';
// import 'package:expomart/core/errors/connection_error.dart';

class ApiProvider {

  static Future<Result<T>> sendObjectRequest<T>({
    required HttpMethod method,
    required String url,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) async {
    try {

print('url='+url);
print('queryParameters='+'$queryParameters');

      // Get the response from the server
      Response response;
      switch (method) {
        case HttpMethod.GET:
          response = await Dio().get(
            url,
            queryParameters: queryParameters,
            options: Options(headers: headers),
            cancelToken: cancelToken,
          );
          break;
        case HttpMethod.POST:
          response = await Dio().post(
            url,
            data: data,
            queryParameters: queryParameters ,
            options: Options(headers: headers),
            cancelToken: cancelToken,
          );
          break;
        case HttpMethod.PUT:
          response = await Dio().put(
            url,
            data: data,
            queryParameters: queryParameters,
            options: Options(headers: headers),
            cancelToken: cancelToken,
          );
          break;
        case HttpMethod.DELETE:
          response = await Dio().delete(
            url,
            data: data,
            queryParameters: queryParameters,
            options: Options(headers: headers),
            cancelToken: cancelToken,
          );
          break;
      }

      // Get the decoded json
      var decodedJson;
      if (response.data is String)
        decodedJson = json.decode(response.data);
      else
        decodedJson = response.data;

      print(decodedJson);
      // Return the http response with actual data
      return Result(data:ModelsFactory.getInstance.createModel<T>(decodedJson));
    }

    // Handling errors
    on DioError catch (e) {
      return Result(error:_handleDioError(e));
    }

    // Couldn't reach out the server
    on SocketException catch (e, stacktrace) {
      print('SocketException -----------:');
      print(e);
      print(stacktrace);
      return Result(error:SocketError());
    }
  }

  static BaseError _handleDioError(DioError error) {
    if (error.type == DioErrorType.response) {
      switch (error.response?.statusCode) {
        case 400:
          return BadRequestError();
        case 401:
          return UnauthorizedError();
        case 403:
          return ForbiddenError();
        case 404:
          return NotFoundError();
        case 409:
          return ConflictError();
        case 500:
          return InternalServerError();
        default:
          return UnknownError();
      }
    } else if (error.type == DioErrorType.other) {
      return NetError();
    } else if (error.type == DioErrorType.connectTimeout ||
        error.type == DioErrorType.sendTimeout ||
        error.type == DioErrorType.receiveTimeout) {
      return TimeoutError();
    } else if (error.type == DioErrorType.cancel) {
        return CancelError();
    } else
      return UnknownError();
  }
}
