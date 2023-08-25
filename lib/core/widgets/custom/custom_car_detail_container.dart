import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';

class CustomCarDetailCardWidget extends StatelessWidget {
  const CustomCarDetailCardWidget({
    Key? key,
    required this.title,
    required this.carImage,
  }) : super(key: key);
  final String title;
  final String carImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3))
      ], borderRadius: BorderRadius.circular(10.r), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(
                  AppAssets.heartSvg,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child: Image.asset(
                carImage,
                height: 160,
              ),
              // : SvgPicture.asset(image,
              // semanticsLabel: 'My SVG Picture' ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppAssets.peopleSvg,
                  height: 14,
                ),
                const Text(
                  '4',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SvgPicture.asset(
                  AppAssets.autoSvg,
                  height: 13.h,
                ),
                const Text(
                  'Manual',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
