import 'package:flutter/material.dart';

class RButton extends StatelessWidget {
  final String btName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle textStyle;
  final VoidCallback callback;
  const RButton(
      {super.key,
      required this.btName,
      this.bgColor,
      required this.textStyle,
      required this.callback,
      this.icon});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback();
      },
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Container(
                  width: 11,
                ),
                Text(
                  btName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          primary: bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(21)))),
    );
  }
}
