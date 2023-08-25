import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ButtonsCustomWidget extends StatelessWidget {
  ButtonsCustomWidget(
      {Key? key,
      required this.buttonTitle,
      this.buttonColor,
      this.textColor,
      this.onPressed,
      this.border})
      : super(key: key);
  final String buttonTitle;
  Color? buttonColor;
  Color? textColor;
  OutlinedBorder? border;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300.w,
        height: 34.h,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: (textColor),
              fontWeight: FontWeight.bold,
              fontSize: 13.sp,
            ),
          ),
          style: ElevatedButton.styleFrom(
            // shape: const StadiumBorder(),
            // padding: EdgeInsets.all(4),
            backgroundColor: buttonColor,
            shape: border,
          ),
        ));
  }
}
