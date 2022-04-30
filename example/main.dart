import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Dio dio = Dio();

  void _initDio() {
    dio.options.baseUrl = 'https://api.covid19api.com';
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        showProcessingTime: true,
        debugOnly: true,
      ),
    );
  }

  void _getDataByDio() {
    dio.get('/world/total');
  }

  @override
  void initState() {
    _initDio();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Example"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                _getDataByDio();
              },
              child: const Text('GET DATA'),
            ),
          ),
        ),
      ),
    );
  }
}
