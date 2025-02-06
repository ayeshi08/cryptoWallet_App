import 'package:crypto_wallet_app/widget/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';

class SwapETHScreen extends StatelessWidget {
  const SwapETHScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Swap ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontFamily:
                                'NunitoSans'),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'ETH',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                              fontSize: 16.sp,
                              fontFamily:

                             'NunitoSans,'
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Center(
                      child: Text(
                    'Cancel',
                    style: TextStyle(
                        color: AppColors.appSecondaryColor,
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  )),
                  width: 85.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.appSecondaryColor),
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.appMainColor),
                ),
              ],
            ),
            20.verticalSpace,
            Container(
              height: 60.h,
              width: 310.w,
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 248, 248, 1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Token To Swap',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            20.verticalSpace,
            Text(
              '0',
              style: TextStyle(
                  color: AppColors.appSecondaryColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 40.sp),
            ),
            20.verticalSpace,
            Container(
              height: 60.h,
              width: 310.w,
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 248, 248, 1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Token',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
           190.verticalSpace,
            Container(
              height: 60.h,
              width: 310.w,
              decoration: BoxDecoration(
                  color: AppColors.appSecondaryColor,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                  child: Text(
                'Get Quotes ',
                style: TextStyle(
                  color: AppColors.appMainColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins.Black',
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
