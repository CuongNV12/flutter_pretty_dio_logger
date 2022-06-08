# flutter_pretty_dio_logger

Show the correct json format, easy to copy and use.

## Usage
```$dart
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
```

```$dart
Dio dio = Dio();
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
```

## How it looks like
![Response Example](https://github.com/CuongNV12/flutter_pretty_dio_logger/blob/main/images/response_log.png?raw=true "Response Example")


This package is inspired by the [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) package.

