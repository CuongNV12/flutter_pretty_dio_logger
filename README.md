# flutter_pretty_dio_logger

Show the correct json format, cUrl, easy to copy and use for many purposes.

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
    showCUrl: true,
    // canShowLog: kDebugMode,
  ),
);
```

## How it looks like
![cUrl Example](https://github.com/CuongNV12/flutter_pretty_dio_logger/blob/main/images/cUrl_log.png?raw=true "cUrl Example")
<br />
![Response Example](https://github.com/CuongNV12/flutter_pretty_dio_logger/blob/main/images/response_log.png?raw=true "Response Example")


This package is inspired by [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) and [curl_logger_dio_interceptor](https://pub.dev/packages/curl_logger_dio_interceptor) packages.
<br />
<br />
