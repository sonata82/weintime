import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();

    _loadUserInfo();
  }

  _loadUserInfo() async {
    var loggedIn = await Provider.of<AuthService>(context, listen: false).isLoggedIn();

    if (loggedIn) {
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, '/login', ModalRoute.withName('/login'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}