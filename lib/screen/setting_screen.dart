import 'package:crypto_wallet_app/widget/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back)),
                  20.horizontalSpace,
                  Text(
                    'Settings ',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontFamily:
                            'NunitoSans'),
                  ),
                ],
              ),
              20.verticalSpace,
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Currency Conversion',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                    12.verticalSpace,
                    Text(
                      'Currency conversion, Primary currency, Language & Search engine',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins'),
                    ),
                    20.verticalSpace,
                    Container(
                      height: 60.h,
                      width: 310.w,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(248, 248, 248, 1),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.w,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                             15.horizontalSpace,
                                Text(
                                  'USD',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  19.verticalSpace,
                    Text(
                      'Current Language',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                    14.verticalSpace,
                    Text(
                      'Manage private key & Export wallet',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins'),
                    ),
                    19.verticalSpace,
                    Container(
                      height: 60.h,
                      width: 310.w,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(248, 248, 248, 1),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.w,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                15.horizontalSpace,
                                Text(
                                  'EN',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    15.verticalSpace,
                    Text(
                      'Show Private Key',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                  12.verticalSpace,
                    Text(
                      'Tap and Hold to reveal and copy key',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins'),
                    ),
                  55.verticalSpace,
                    Text(
                      'About Cryptomask',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
