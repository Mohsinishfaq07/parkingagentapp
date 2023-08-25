import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/constants/app_assets.dart';
import '../../core/widgets/custom/buttons_custom_widget.dart';
import '../../core/widgets/custom/custom_feature_container.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CarDetailScreenContent();
  }
}

class CarDetailScreenContent extends StatefulWidget {
  const CarDetailScreenContent({Key? key}) : super(key: key);
  @override
  State<CarDetailScreenContent> createState() => _CarDetailScreenContentState();
}

class _CarDetailScreenContentState extends State<CarDetailScreenContent> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 240,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xFF6256B7),
                Color(0xFF0A295A),
              ],
            )),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(100.r),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 20,
                            ))),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const Text(
                    'Car Detail',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 260,
          left: 15,
          right: 15,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: KeyboardVisibilityBuilder(
                builder: (context, isKeyboardVisible) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.63,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3))
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 20.0, right: 20.0, bottom: 30.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18.h,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          '4.4(225 reviews)',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.sp),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        width: 120,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color(0xFF6256B7),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'PKR.12000',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp),
                                            ),
                                            Text(
                                              '7 weeks',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'No. Plate',
                                          style: TextStyle(fontSize: 12.sp),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'Car model:',
                                          style: TextStyle(fontSize: 12.sp),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'Car owner name:',
                                          style: TextStyle(fontSize: 12.sp),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'AAA123',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.sp),
                                        ),
                                        SizedBox(
                                          height: 5.w,
                                        ),
                                        Text(
                                          'Cherrolet Spark AJR-558',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.sp),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'Mr.Raza',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.sp),
                                        ),
                                        Text(
                                          'Mr.Raza',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.sp),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, bottom: 10),
                                  child: Text(
                                    'Availability',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors
                                            .black, //<---- Insert Gradient Here
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Date',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                            SizedBox(
                                              width: 30.w,
                                            ),
                                            Text('13 July - 19 July 2022',
                                                style:
                                                    TextStyle(fontSize: 10.sp))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Time',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                            SizedBox(
                                              width: 30.w,
                                            ),
                                            Text('8:00 am - 10:00 pm',
                                                style:
                                                    TextStyle(fontSize: 10.sp))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, bottom: 10),
                                  child: Text(
                                    'Overview',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                const Text(
                                  'Country to popular belief, Lorem Ipsum is not simply random\ntext. It has roots in a piece of classical Latin literature from45\nBC.making it over 2000 years old.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, bottom: 10),
                                  child: Text('Features'),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomFeatureContainer(
                                      image: AppAssets.seatSvg,
                                      text: "4 Seats",
                                    ),
                                    CustomFeatureContainer(
                                        image: AppAssets.batterySvg,
                                        text: "510 HP"),
                                    CustomFeatureContainer(
                                        image: AppAssets.meterSvg,
                                        text: "200 km/h"),
                                    CustomFeatureContainer(
                                        image: AppAssets.autoSvg, text: "auto"),
                                    CustomFeatureContainer(
                                        image: AppAssets.bagSvg,
                                        text: "2 Bags"),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 20),
                                  child: Container(
                                    width: 120,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors
                                              .grey, //<---- Insert Gradient Here
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: const Color(0xFF6256B7),
                                          value: value,
                                          onChanged: (value) {
                                            setState(() {
                                              this.value = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Self Drive',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 290,
                    left: 20,
                    right: 20,
                    child: ButtonsCustomWidget(
                      buttonTitle: 'Book Your Car',
                      buttonColor: const Color(0xFF6256B7),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 120,
            child: Image.asset(AppAssets.orangeCar)),
      ],
    ));
  }
}
