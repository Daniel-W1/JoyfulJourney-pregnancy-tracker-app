import 'dart:io';
import 'package:http/http.dart' as http;
import './string_extension.dart';

// Custom HTTP client to streamline the HTTP requests.
class CustomHttpClient {
  static String baseUrl = "http://localhost:3000";

  final http.Client _httpClient = http.Client();
  String? _authToken;

  CustomHttpClient();

  set authToken(String? value) {
    _authToken = value;
  }

  Future<http.Response> get(String url,
      {Map<String, String> headers = const {}}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.get(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
    );
  }

  Future<http.Response> post(String url,
      {Map<String, String> headers = const <String, String>{},
      Object? body,
      String contentType = "application/json"}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.post(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.Response> put(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.put(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.Response> patch(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.patch(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.Response> delete(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': contentType,
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    return _httpClient.delete(
      (baseUrl + url).uri,
      headers: headersWithContentTypeAndAuth,
      body: body,
    );
  }

  Future<http.StreamedResponse> multiPartRequest(
    String url,
    String method, {
    Map<String, String> headers = const {},
    Map<String, dynamic> body = const {},
    Map<String, File> files = const {},
  }) async {
    Map<String, String> headersWithContentTypeAndAuth = {
      ...headers,
      'Content-Type': "multipart/form-data",
      if (_authToken != null) 'Authorization': 'Bearer $_authToken'
    };

    var request = http.MultipartRequest(method, Uri.parse(baseUrl + url));

    // Add headers
    request.headers.addAll(headersWithContentTypeAndAuth);

    // Add files to the request.
    if (files.isNotEmpty) {
      files.forEach((key, value) async {
        request.files.add(await http.MultipartFile.fromPath(key, value.path));
      });
    }

    // Add body to the request.
    if (body.isNotEmpty) {
      body.forEach((key, value) {
        request.fields[key] = value.toString();
      });
    }

    return await request.send();
  }
}
