import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weintime/swagger_generated_code/wein_db.swagger.dart';

class AuthService {
  WeinDb weinDb;

  AuthService(this.weinDb);

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    var accessToken = prefs.getString('access_token');

    if (accessToken != null) {
      var accountGet = await weinDb.accountGet();
      return accountGet.isSuccessful;
    }
    return false;
  }

  Future<bool> login(String username, String password) async {
    var response = await weinDb.tokenPost(username: username, password: password, grantType: 'password');

    if (response.isSuccessful) {
      final prefs = await SharedPreferences.getInstance();

      var accessToken = response.body!.accessToken;
      if (accessToken != null) {
        prefs.setString('access_token', accessToken);
        return true;
      }
    }
    return false;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('access_token');
    prefs.remove('refresh_token');
  }
}