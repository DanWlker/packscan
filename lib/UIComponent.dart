import 'package:flutter/material.dart';
import 'UIColors.dart';

class UIComponent {
  //Default components for our user interface, users can pass in
  //on pressed, but default stuff like hover distance, colors, fonts
  //can be set here to ensure whole ui follows the design laid out in Figma

  static defaultFunction() {}

  static Widget UIButton({required Function onPressed}) {
    return MaterialButton(
      onPressed: () => onPressed(),
      color: Color(UIColors.Purple2),
    );
  }

  static Widget UITextField() {
    return TextField();
  }

  static Widget UICard({Widget? child}) {
    return Card(child: child);
  }

  static Widget UiText(String data) {
    return Text(data);
  }
}
