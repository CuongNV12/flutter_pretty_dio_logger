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
      showCUrl: true,
      // canShowLog: kDebugMode,
    ),
  );
  // Note: logPrint default is "log", it is work only when Debugging - https://github.com/Dart-Code/Dart-Code/issues/3653
  dio.get('/world/total');
}
