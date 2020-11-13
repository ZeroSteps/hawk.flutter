import 'package:codex_hawk/screen/login/auth_controller.dart';
import 'package:flutter/material.dart';

class AuthorizationPage extends StatefulWidget {
  /*AuthController controller;

  AuthorizationPage() {
    controller = AuthController();
  }*/

  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            child: Center(child: Container(child: AuthWidget())),
          )),
          Text("Made by CodeX")
        ],
      ),
    ));
  }
}
