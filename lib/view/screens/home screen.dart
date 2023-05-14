import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/view/Color/color_assets.dart';
import 'package:work/view/component/doctor_card.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAssets.orange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorAssets.orange,
        leading: Padding(
          padding: EdgeInsets.all(5.w),
          child: const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/logo.jpg',
            ),
          ),
        ),
        title: Row(
          children: [
            Text(
              'SUPPORT',
              style: TextStyle(
                color: ColorAssets.blueText,
                fontSize: 13.5.sp,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              'ME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.5.sp,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            FontAwesomeIcons.bell,
            color: ColorAssets.whiteBackground,
            size: 20.w,
          ),
          Icon(
            FontAwesomeIcons.sort,
            color: ColorAssets.whiteBackground,
            size: 20.w,
          ),
          Icon(
            FontAwesomeIcons.filter,
            color: ColorAssets.whiteBackground,
            size: 20.w,
          ),
          Icon(
            FontAwesomeIcons.searchengin,
            color: ColorAssets.whiteBackground,
            size: 20.w,
          ),
          Icon(
            FontAwesomeIcons.ellipsisVertical,
            color: ColorAssets.whiteBackground,
            size: 20.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return const DoctorCard();
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 10.h,
            ),
            itemCount: 4,
          ),
        ),
      ),
    );
  }
}
