import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallButtonsCustomWidget extends StatelessWidget {
  SmallButtonsCustomWidget({
    Key? key,
    required this.buttonTitle,
    this.buttonColor,
    this.textColor,
    this.onPressed,
    this.border,
  }) : super(key: key);
  final String buttonTitle;
  Color? buttonColor;
  Color? textColor;
  OutlinedBorder? border;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonTitle,
        style: TextStyle(color: (textColor), fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        // shape: const StadiumBorder(),
        // padding: EdgeInsets.all(4),
        backgroundColor: buttonColor,
        shape: border,
      ),
    );
  }
}
