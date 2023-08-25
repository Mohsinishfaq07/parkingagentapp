import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SearchBarCustomWidget extends StatefulWidget {
  SearchBarCustomWidget({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);
  final String hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;

  @override
  State<SearchBarCustomWidget> createState() => _SearchBarCustomWidgetState();
}

class _SearchBarCustomWidgetState extends State<SearchBarCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 36,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.h),
            filled: true, //<-- SEE HERE
            fillColor: Colors.white, //<-- SEE HERE
            enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Colors.white), //<-- SEE HERE
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Color(0xFF313131)), //<-- SEE HERE
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            suffixStyle: TextStyle(
              fontSize: 8.sp,
            ),
            // prefixIcon: Icon(widget.prefixIcon),
            suffixIcon: Icon(widget.suffixIcon),
            suffixIconColor: Colors.blueGrey),
      ),
    );
  }
}
