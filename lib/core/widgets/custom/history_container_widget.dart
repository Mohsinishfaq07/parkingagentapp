import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHistoryContainerWidget extends StatelessWidget {
  const CustomHistoryContainerWidget({
    Key? key,
    required this.name,
    required this.pickupTime,
    required this.delieveryTime,
    required this.firstTime,
    required this.secondTime,
    required this.from,
    required this.to,
    required this.carNumber,
    required this.carModel,
    this.image,
  }) : super(key: key);
  final String name;
  final String pickupTime;
  final String delieveryTime;
  final String firstTime;
  final String secondTime;
  final String from;
  final String to;
  final String carNumber;
  final String carModel;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      SizedBox(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(1, 1))
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14.sp,
                        ),
                        Text(
                          '4.4 (225 reviews)',
                          style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70.h, bottom: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name:',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text('Pickup date:',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text('Delivery time:',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text('Pickup & Drop off time:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text('Location From To:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text('No.Plate:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'Car model:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text(pickupTime,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text(delieveryTime,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text("$firstTime - $secondTime",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text('$from - $to',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text(carNumber,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                carModel,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
          top: 0,
          left: -70,
          child: Row(children: [
            AnimatedContainer(duration: const Duration(milliseconds: 400)),
            Image.asset(
              image!,
              height: 100,
            ),
          ])),
    ]);
  }
}
