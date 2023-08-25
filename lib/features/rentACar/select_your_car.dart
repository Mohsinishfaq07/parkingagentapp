import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/custom/buttons_custom_widget.dart';
import '../../core/widgets/custom/search_bar_custom_widget.dart';
import 'presentation/pages/post_car_detail.dart';
import '../homeScreen/car_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6256B7),
        title: const Text(
          'Select Your Car',
          style: TextStyle(fontSize: 25),
        ),
        leading: const Icon(Icons.menu_outlined),
        actions: const [Icon(Icons.history)],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(110.h),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SearchBarCustomWidget(
                  hintText: 'Search Your Car',
                  suffixIcon: Icons.search,
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ButtonsCustomWidget(
                    buttonTitle: 'Add New Car',
                    buttonColor: Colors.white,
                    textColor: Colors.black,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PostCarDetail()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 140,
                    child: ButtonsCustomWidget(
                      buttonTitle: 'Hire a car',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      border: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.black, width: 1.w),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const PostCarDetailContent()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: ButtonsCustomWidget(
                      buttonTitle: 'Rent a car',
                      textColor: Colors.white,
                      buttonColor: const Color(0xFF6256B7),
                      onPressed: () {},
                      border: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  height: 220,
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
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cherrolet Spark',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 134,
                            ),
                            Icon(Icons.heart_broken_rounded),
                            Icon(Icons.pending_outlined)
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'AJR-558',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Icon(
                          Icons.car_crash_outlined,
                          size: 120,
                        ),
                        Row(
                          children: [
                            Icon(Icons.manage_accounts),
                            Text('4'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.manage_accounts),
                            Text('4'),
                            SizedBox(
                              width: 176,
                            ),
                            Text('PKR.12000')
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('7weeks'),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CarDetailScreenContent()));
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 220,
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
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cherrolet Spark',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 134,
                          ),
                          Icon(Icons.heart_broken_rounded),
                          Icon(Icons.pending_outlined)
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'AJR-558',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        Icons.car_crash_outlined,
                        size: 120,
                      ),
                      Row(
                        children: [
                          Icon(Icons.manage_accounts),
                          Text('4'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.manage_accounts),
                          Text('4'),
                          SizedBox(
                            width: 176,
                          ),
                          Text('PKR.12000')
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text('7weeks'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
