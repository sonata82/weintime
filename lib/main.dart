import 'package:logging/logging.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weintime/authentication_interceptor.dart';
import 'package:weintime/login_page.dart';
import 'package:weintime/refresh_token_authenticator.dart';
import 'package:weintime/swagger_generated_code/client_index.dart';
import 'package:weintime/swagger_generated_code/wein_db.swagger.dart';
import 'package:weintime/wine_list.dart';

import 'auth_service.dart';
import 'landing_page.dart';

void main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  runApp(MultiProvider(
      providers: [
        Provider<WeinDb>(create: (_) => createWeinDbService()),
        Provider<AuthService>(create: (context) =>
            AuthService(Provider.of<WeinDb>(context, listen: false))),
      ],
      child: MyApp()
  ));
}

createWeinDbService() {
  return WeinDb.create(ChopperClient(
      baseUrl: "https://weindb.smc-communication.de",
      converter: $JsonSerializableConverter(),
      authenticator: RefreshTokenAuthenticator(),
      interceptors: [AuthenticationInterceptor(), HttpLoggingInterceptor()]
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
      routes: {
        '/home': (BuildContext context) => WineList(),
        '/login': (BuildContext context) => LoginPage()
      },
    );
  }
}
