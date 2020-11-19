import 'package:codex_core/colors/hawk_auth_colors.dart';
import 'package:codex_core/colors/hawk_base_colors.dart';
import 'package:codex_hawk/screen/login/auth_controller.dart';
import 'package:codex_hawk/screen/login/registration_controller.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/auth-bg.png"), fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 72.0),
                child: Column(
                  children: [
                    Text("HAWK",
                        style: TextStyle(
                            color: AuthColors.textColorWhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Text("Time for quality",
                        style: TextStyle(
                          color: BaseColors.labelTextColor,
                        )),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                child: Center(child: Container(child: RegistrationWidget())),
              )),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text("Made by CodeX",
                    style: TextStyle(
                        color: AuthColors.textColorWhite, fontSize: 12)),
              )
            ],
          ),
        ));
  }
}
