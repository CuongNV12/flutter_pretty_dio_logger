import 'package:dio/dio.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

void main() {
  final Dio dio = Dio();

  dio.options.baseUrl = 'https://api.covid19api.com';

  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      queryParameters: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      showProcessingTime: true,
      // canShowLog: kDebugMode,
    ),
  );

  dio.get('/world/total');
}
