import 'package:codex_core/colors/hawk_auth_colors.dart';
import 'package:codex_core/colors/hawk_base_colors.dart';
import 'package:codex_widgets/edit_text/LabelTextField.dart';
import 'package:flutter/material.dart';

class AuthController {
  Widget provideAuth() {
    //TODO()
  }
}

class AuthWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthState();
}

class _AuthState extends State<AuthWidget> {
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
                padding: const EdgeInsets.only(top: 0),
                child: LabelTextField(text: "Email address"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: LabelTextField(text: "Password"),
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
              child: Text("Enter",
                  style: TextStyle(color: BaseColors.textFieldColor, fontSize: 14)),
            ),
            onPressed: () => {}),
        InkWell(
          child: Text(
            "Recovery password",
            style: TextStyle(color: BaseColors.labelTextColor, fontSize: 13),
          ),
        )
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
            "Fast Auth",
            style: TextStyle(color: BaseColors.textFieldColor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Text("Sign up",
                style:
                    TextStyle(color: BaseColors.labelTextColor, fontSize: 16,fontWeight: FontWeight.bold)),
          ),
          onTap: () => {},
        )
      ],
    );
  }
}
