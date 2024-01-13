import 'package:dio/dio.dart';

import '/path.dart';

class NetworkService {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: AppConfig.baseURL,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  // GET Method
  Future<Response?> get(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    Options? options,
  }) async {
    try {
      final response = await dio.get(
        endpoint,
        queryParameters: queryParams,
        options: options,
      );
      return response;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  // POST Method
  Future<Response?> post(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await dio.post(
        endpoint,
        queryParameters: queryParams,
        options: options,
        data: data,
      );
      return response;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  // PUT Method
  Future<Response?> put(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await dio.put(
        endpoint,
        queryParameters: queryParams,
        options: options,
        data: data,
      );
      return response;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  // PATCH Method
  Future<Response?> patch(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await dio.patch(
        endpoint,
        queryParameters: queryParams,
        options: options,
        data: data,
      );
      return response;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  // Delete Method
  Future<Response?> delete(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    dynamic data,
    Options? options,
  }) async {
    try {
      final response = await dio.delete(
        endpoint,
        queryParameters: queryParams,
        options: options,
        data: data,
      );
      return response;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
