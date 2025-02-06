import 'package:crypto_wallet_app/widget/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import 'transaction_history_screen.dart';

class SendETHScreen extends StatelessWidget {
  const SendETHScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
                              text: 'Send ',
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
                                       'NunitoSans',
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
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )),
                        width: 85.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.appSecondaryColor),
                            borderRadius: BorderRadius.circular(5.r),
                            color: AppColors.appMainColor),
                      ),
                    ],
                  ),
              15.verticalSpace,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 16.sp),
                      ),
                    15.verticalSpace,
                      Container(

                        decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 248, 248, 1),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/Ellipse 6.png'),
                                    radius: 18,
                                  ),
                                15.horizontalSpace,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Account 01',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        'Balannce: 0.0 ETH',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                20.verticalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 16.sp),
                      ),
                      10.verticalSpace,
                      Container(
                        height: 60.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 248, 248, 1),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Search public address here',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(Icons.qr_code_2),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            15.verticalSpace,
            Divider(
              color: Color.fromRGBO(189, 189, 189, 1),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w,),
              child: Column(
                children: [
                  15.verticalSpace,
                  SizedBox(
                    height: 60.h,
                    width: 310.w,
                    child: TextFormField(
                      decoration: new InputDecoration(
                        hintText: " Token Name",
                        fillColor: Color.fromRGBO(248, 248, 248, 1),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        color: Color.fromRGBO(152, 152, 152, 1),
                        fontFamily: "Poppins-Regular",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  SizedBox(
                    height: 60.h,
                    width: 310.w,
                    child: TextFormField(
                      decoration: new InputDecoration(
                        hintText: " Token ID",
                        fillColor: Color.fromRGBO(248, 248, 248, 1),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        color: Color.fromRGBO(152, 152, 152, 1),
                        fontFamily: "Poppins-Regular",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                10.verticalSpace,
                  GestureDetector(
                    onTap: () {
                      Get.to(TransactionHistoryScreen());
                    },
                    child: Container(
                      height: 60.h,
                      width: 310.w,
                      decoration: BoxDecoration(
                          color: AppColors.appSecondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Next ',
                        style: TextStyle(
                          color: AppColors.appMainColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Poppins.Black',
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
