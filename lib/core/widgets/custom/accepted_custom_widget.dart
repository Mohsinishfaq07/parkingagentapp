import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';

class AcceptedCustomWidget extends StatelessWidget {
  const AcceptedCustomWidget(
      {Key? key,
      this.image,
      required this.name,
      required this.locationOne,
      required this.locationTwo,
      required this.no,
      required this.model,
      required this.dateOne,
      required this.dateTwo,
      required this.noText,
      required this.modelText})
      : super(key: key);

  final String? image;
  final String name;
  final String locationOne;
  final String locationTwo;
  final String no;
  final String model;
  final String dateOne;
  final String dateTwo;
  final String noText;
  final String modelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1))
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [SizedBox(
                    width: 26,
                    height: 26,
                    child: CircleAvatar(
                      radius: 10,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.r),
                          child: SvgPicture.asset(AppAssets.peopleSvg)),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(name,style: const TextStyle(fontSize: 10),),
                    ),],),

                  // const SizedBox(
                  //   width: 150,
                  // ),
                  if (image != null) SvgPicture.asset(image!),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        AppAssets.greenCircleSvg,
                        height: 8,
                      ),
                      const DottedLine(
                        direction: Axis.vertical,
                        lineLength: 30,
                        lineThickness: 2.0,
                        // dashLength: 2.0,
                        dashColor: Colors.black26,
                        dashGapLength: 2.0,
                        dashGapRadius: 350.0,
                      ),
                      SvgPicture.asset(
                        AppAssets.locationSvg,
                        height: 14,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            locationOne,style: const TextStyle(fontSize: 10),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            dateOne,
                            style: const TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            locationTwo,
                            style: const TextStyle(fontSize: 10),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Text(
                            dateTwo,
                            style: const TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(no,style: const TextStyle(fontSize: 10),),
                  const SizedBox(
                    width: 46,
                  ),
                  Text(
                    noText,
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(model,style: const TextStyle(fontSize: 10),),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    modelText,
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
