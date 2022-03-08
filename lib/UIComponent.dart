import 'package:flutter/material.dart';
import 'UIColors.dart';

class UIComponent {
  //Default components for our user interface, users can pass in
  //on pressed, but default stuff like hover distance, colors, fonts
  //can be set here to ensure whole ui follows the design laid out in Figma

  static defaultFunction() {}

  //TODO: Very crude implementation, may nede to revise
  static Widget UIButton({required Function onPressed, required Widget child}) {
    return ElevatedButton(
        onPressed: () => onPressed(),
        child: child,
        style: ElevatedButton.styleFrom(
            primary: Color(UIColors.Purple2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))));
  }

  static Widget UITextField() {
    return TextField();
  }

  //TODO: Very crude implementation, might need to revise
  static Widget UICard({Widget? child}) {
    return Card(
      elevation: 0,
      child: child,
      color: Color(UIColors.Grey4),
    );
  }

  //TODO: Very crude implementation assuming our default color is purple,may need revision
  static Widget UIText(String data, {Color? color}) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? Color(UIColors.Purple2),
        //TODO: May need to use google fonts plugin here, depending if import directly or use the module
        //fontFamily: "Poppins"
      ),
    );
  }

  //TODO: Assuming default is purple, crude implementation
  static Widget UIIcon(IconData? icon, {double? size, Color? color}) {
    return Icon(
      icon,
      color: color ?? Color(UIColors.Purple2),
      size: size,
    );
  }
}
