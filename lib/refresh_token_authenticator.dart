import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RefreshTokenAuthenticator extends Authenticator {
  static const String AUTH_HEADER = "Authorization";
  static const String BEARER = "Bearer ";

  @override
  FutureOr<Request?> authenticate(Request request, Response<dynamic> response) async {
    if (response.statusCode == 401) {
      String? newToken = await _refreshToken();

      final Map<String, String> updatedHeaders =
      Map<String, String>.of(request.headers);

      if (newToken != null) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('access_token', newToken);

        newToken = BEARER + newToken;
        updatedHeaders.update(AUTH_HEADER, (String _) => newToken!,
            ifAbsent: () => newToken!);
        return request.copyWith(headers: updatedHeaders);
      }
    }
    return null;
  }

  _refreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    var refreshToken = prefs.getString('refresh_token');

    var uri = Uri.parse('https://weindb.smc-communication.de/Token?grant_type=refresh_token&refresh_token=$refreshToken');
    var response = await http.post(uri);

    if (response.statusCode == 200) {
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      refreshToken = decodedResponse['refresh_token'];
      if (refreshToken != null) {
        prefs.setString('refresh_token', refreshToken);
      }
      return decodedResponse['access_token'];
    } else {
      //back to login
    }
  }
}