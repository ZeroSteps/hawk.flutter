import 'package:codex_core/colors/hawk_auth_colors.dart';
import 'package:codex_core/colors/hawk_base_colors.dart';
import 'package:codex_widgets/edit_text/LabelTextField.dart';
import 'package:flutter/material.dart';

class RegistrationController {
  Widget provideAuth() {
    //TODO()
  }
}

class RegistrationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.fromBorderSide(
                  BorderSide(color: AuthColors.backgroundBorder)),
              color: AuthColors.background),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildHeader(),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 0.5),
                  margin: EdgeInsets.symmetric(vertical: 15),
                  color: BaseColors.delimiterColor),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 16),
                child: LabelTextField(text: "Email address"),
              ),
              buildFooter()
            ],
          ),
        ));
  }

  Row buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RaisedButton(
            color: BaseColors.actionBackground,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text("Registration",
                  style: TextStyle(
                      color: BaseColors.textFieldColor, fontSize: 14)),
            ),
            onPressed: () => {}),
      ],
    );
  }

  Row buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Text(
            "Sign Up",
            style: TextStyle(
                color: BaseColors.textFieldColor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Text("Login",
                style: TextStyle(
                    color: BaseColors.labelTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          onTap: () => {Navigator.pop(context)},
        )
      ],
    );
  }
}
