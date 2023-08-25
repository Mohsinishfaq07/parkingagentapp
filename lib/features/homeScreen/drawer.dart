import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sb_myreports/core/utils/constants/app_assets.dart';
import 'package:sb_myreports/features/rentACar/history_screen.dart';

import '../../core/widgets/custom/buttons_custom_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    radius: 10,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: SvgPicture.asset(AppAssets.peopleSvg)),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'Syeda Summayia Zaidi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70.0, right: 70.0, top: 30),
            child: Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: ListTile(
              leading: SvgPicture.asset(AppAssets.peopleSvg),
              title: Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.bookingSvg),
            title: Text("Bookings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.historySvg),
            title: Text("History",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HistoryScreen()),
              );
            },
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.notificationSvg),
            title: Text("Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.walletSvg),
            title: Text("Wallet",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.promotionSvg),
            title: Text("Promotions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.cardSvg),
            title: Text("Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50),
            child: Divider(
              color: Colors.black,
              thickness: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'More',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 20, bottom: 10),
            child: Text('Help',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text('Invite & Earn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
            child: ButtonsCustomWidget(
              buttonTitle: 'Log out',
              buttonColor: const Color(0xFF6256B7),
              textColor: Colors.white,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
