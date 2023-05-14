import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/view/Color/color_assets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAssets.orange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorAssets.orange,
        centerTitle: true,
        title: Text(
          'PROFILE',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 40.sp,
            color: ColorAssets.brownText,
          ),
        ),
        leading: Row(
          children : const <Widget>[
             BackButton(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorAssets.whiteBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 30.r,
                          backgroundImage: const AssetImage(
                            'assets/images/login.png',
                          ),
                        ),
                      ),
                      Text(
                        'Doctor Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp,
                          color: ColorAssets.brownText,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: ColorAssets.yellowStar,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: ColorAssets.yellowStar,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: ColorAssets.yellowStar,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: ColorAssets.yellowStar,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: ColorAssets.yellowStar,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 5),
                        child: Row(
                          children: [
                            Text(
                              'Specialized in : ...',
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: ColorAssets.brownText,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
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
                                fontSize: 20.sp,
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
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, top: 5, bottom: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Colors.red,
                              size: 15,
                            ),
                            Text(
                              'Online : ',
                              style: TextStyle(
                                color: ColorAssets.brownText,
                                fontSize: 20.sp,
                              ),
                            ),
                            Text(
                              'start your session now',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ColorAssets.yellowStar,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
