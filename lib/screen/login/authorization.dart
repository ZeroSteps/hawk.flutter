import 'package:codex_core/colors/hawk_auth_colors.dart';
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
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/auth-bg.png"), fit: BoxFit.cover)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 64, 0, 8),
            child: Text("HAWK",
                style: TextStyle(color: AuthColors.textColor, fontSize: 30)),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Text("Time for quality",
                style: TextStyle(
                  color: AuthColors.textColor,
                )),
          ),
          Expanded(
              child: Container(
            child: Center(child: Container(child: AuthWidget())),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Made by CodeX",
                style: TextStyle(color: AuthColors.textColor)),
          )
        ],
      ),
    ));
  }
}
