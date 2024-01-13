import 'package:bored/bored.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NetworkService {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: AppConfig.baseURL,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  // get
  Future<Response?> get(
    String endpoint, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (queryParameters != null) {
        return await dio.get(
          endpoint,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
          ),
        );
      }

      return await dio.get(
        endpoint,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      debugPrint(e.message);
      return e.response;
    }
  }

  // post
  Future<Response?> post(
    String endpoint, {
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      return await dio.post(
        endpoint,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      debugPrint(e.message);
      return e.response;
    }
  }

  // put
  Future<Response?> put(
    String endpoint, {
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      return await dio.put(
        endpoint,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      debugPrint(e.message);
      return e.response;
    }
  }

  // patch
  Future<Response?> patch(
    String endpoint, {
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      return await dio.patch(
        endpoint,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      debugPrint(e.message);
      return e.response;
    }
  }

  // delete
  Future<Response?> delete(
    String endpoint, {
    Map<String, dynamic>? headers,
  }) async {
    try {
      return await dio.delete(
        endpoint,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      debugPrint(e.message);
      return e.response;
    }
  }
}

final dioProvider = Provider<Dio>((ref) {
  return NetworkService.dio;
});
