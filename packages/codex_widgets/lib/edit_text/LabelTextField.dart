import 'dart:developer';

import 'package:codex_core/colors/hawk_base_colors.dart';
import 'package:flutter/material.dart';

class LabelTextField extends StatefulWidget {
  String text = "";
  String hint = "";

  LabelTextField({this.text, this.hint});

  @override
  State<StatefulWidget> createState() => _LabelTextFieldState();
}

class _LabelTextFieldState extends State<LabelTextField> {
  @override
  Widget build(BuildContext context) {
    log("text " + widget.text);
    return Column(children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            widget.text.toUpperCase(),
            style:
                TextStyle(color: BaseColors.labelTextColor, letterSpacing: 0.15),
          ),
        ),
      ),
      TextField(
        style: TextStyle(color: BaseColors.textFieldColor),
        decoration: InputDecoration(
            filled: true,
            fillColor: BaseColors.textFieldBackground,
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: BaseColors.labelTextColor,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: BaseColors.actionBackground)),
            border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: BaseColors.textFieldBorderColor))),
      )
    ]);
  }
}
