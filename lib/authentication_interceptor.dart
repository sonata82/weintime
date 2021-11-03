import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationInterceptor implements RequestInterceptor {
  static const String AUTH_HEADER = "Authorization";
  static const String BEARER = "Bearer ";

  @override
  FutureOr<Request> onRequest(Request request) async {
    final prefs = await SharedPreferences.getInstance();
    var accessToken = prefs.getString('access_token');

    if (accessToken != null) {
      return request.copyWith(headers: {AUTH_HEADER: BEARER + accessToken});
    }
    return request;
  }

}