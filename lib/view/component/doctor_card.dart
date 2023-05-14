import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/view/Color/color_assets.dart';
import 'package:work/view/screens/profile.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorAssets.whiteBackground,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 30.r,
                    backgroundImage: const AssetImage(
                      'assets/images/login.png',
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Doctor Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                      color: ColorAssets.brownText,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorAssets.yellowStar,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorAssets.yellowStar,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorAssets.yellowStar,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorAssets.yellowStar,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorAssets.yellowStar,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Text(
                    'Specialized in : ...',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: ColorAssets.brownText,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.moneyCheckDollar,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '300 EGP',
                        style: TextStyle(
                          color: ColorAssets.yellowText,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        FontAwesomeIcons.play,
                        color: ColorAssets.yellowStar,
                      ),
                      Text(
                        '200+ SESSION',
                        style: TextStyle(
                          color: ColorAssets.brownText,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 15.w,
                      ),
                      Text(
                        'Online : ',
                        style: TextStyle(
                          color: ColorAssets.brownText,
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        'start your session now',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: ColorAssets.yellowStar,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Column(
                      children: [
                        Container(
                          height: 30.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ProfileScreen();
                              }));
                            },
                            child: Text(
                              'profile',
                              style: TextStyle(
                                color: ColorAssets.yellowText,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
