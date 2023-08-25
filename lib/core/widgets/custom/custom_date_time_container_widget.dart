import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDateTimeContainerWidget extends StatelessWidget {
  const CustomDateTimeContainerWidget({required this.text,required this .icon,
    Key? key,
  }) : super(key: key);
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 116.w,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, //color of border
            width: 1, //width of border
          ),
          borderRadius: BorderRadius.circular(6),
          color: Colors.white),
      child: Row(
        children:  [
          SizedBox(
            width: 4.w,
          ),
         SvgPicture.asset(icon,height: 16.h,),
          SizedBox(
            width: 6.w,
          ),
          Text(text,
              style:
              TextStyle(color: Colors.grey, fontSize: 10.sp))
        ],
      ),
    );
  }
}
