import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _username;
  late String _password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Login'),
    ),
    body: new SafeArea(
      top: false,
      bottom: false,
      child: new Form(
        autovalidateMode: AutovalidateMode.disabled,
        key: _formKey,
        child: new SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        key: Key("_username"),
                        decoration: InputDecoration(labelText: "Username"),
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          if (value != null) {
                            _username = value;
                          }
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username is required';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Password"),
                        obscureText: true,
                        onSaved: (value) {
                          if (value != null) {
                            _password = value;
                          }
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10.0),
                      ButtonBar(
                        children: <Widget>[
                          ElevatedButton.icon(
                              onPressed: _handleSubmitted,
                              icon: Icon(Icons.arrow_forward),
                              label: Text('Sign in')),
                        ],
                      ),
                    ],
                  ),
                ]),
        ),
      ),
    ),
  );

  void _handleSubmitted() {
    final FormState form = _formKey.currentState!;
    if (!form.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please fix the errors in red before submitting.')));
    } else {
      form.save();
      Provider.of<AuthService>(context, listen: false).login(_username, _password).then((result) {
        if (result) {
          Navigator.of(context).pushReplacementNamed('/home');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to login.')));
        }
      });
    }
  }
}