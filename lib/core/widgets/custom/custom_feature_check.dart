import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFeatureCheck extends StatelessWidget {
  const CustomFeatureCheck({
    required this.value,
    required this.text,
    required this.onChange,
    Key? key,
  }) : super(key: key);
  final bool value;
  final String text;
  final Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23,
      child: Row(
        children: [
          Transform.scale(
            scale: 1.4,
            child: Checkbox(
                visualDensity: VisualDensity.comfortable,
                side: BorderSide(width: 0.5.w),
                checkColor: Colors.greenAccent,
                activeColor: Colors.white,
                value: value,
                onChanged: onChange),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 10.sp,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
