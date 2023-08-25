import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';
import 'image_picker.dart';

class CustomImagePickerContainer extends StatelessWidget {
  const CustomImagePickerContainer({required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await getImageFromCamera();
      },
      child: Container(
        width: 260.w,
        height: 120.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, //color of border
            width: 1, //width of border
          ),
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              AppAssets.cameraSvg,
              height: 36.h,
              color: Colors.grey,
            ),
             SizedBox(
              height: 6.h,
            ),
            Text(
             text,
              style: TextStyle(
                  color: Colors.grey, fontSize: 12.sp),
            ),

             SizedBox(
              height: 6.h,
            ),
          ],
        ),
      ),
    );
  }
}
