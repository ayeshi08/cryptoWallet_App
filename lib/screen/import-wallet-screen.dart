import 'package:crypto_wallet_app/widget/custom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import 'first_create_new_wallet_screen.dart';

class ImportWalletScreen extends StatelessWidget {
  const ImportWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appSecondaryColor,
      appBar: CustomAppBar(),
      body:
      CustomScrollView(
        slivers: [
        SliverFillRemaining(
        hasScrollBody: false,

        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Import Account',
                        style: TextStyle(
                            fontFamily: 'Poppins-Black',
                            fontWeight: FontWeight.w700,
                            fontSize: 36.sp,
                            color: AppColors.appMainColor),
                      ),
                      10.verticalSpace,
                      Text(
                        'Import an exsiting wallet or create a new one',
                        style: TextStyle(
                          color: AppColors.appMainColor,
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          80.verticalSpace,
            Expanded(
              child: Container(
               // constraints: BoxConstraints.expand(),
                            width: double.infinity,
                          //  height: double.infinity,
                            decoration: BoxDecoration(
              color: AppColors.appMainColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35.0.r),
                topLeft: Radius.circular(35.0.r),
              ),
                            ),
                            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 30.w, vertical: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Import Account Details',
                      style: TextStyle(
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                    25.verticalSpace,
                    SizedBox(
                      width: 310.w,
                      height: 60.h,
                      child: TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Secret Recovery Phrase",
                          fillColor: Color.fromRGBO(248, 248, 248, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
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
                   20.verticalSpace,
                    SizedBox(
                      width: 310.w,
                      height: 60.h,
                      child: TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Your Password",
                          fillColor: Color.fromRGBO(248, 248, 248, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Poppins-Regular",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(152, 152, 152, 1),
                        ),
                      ),
                    ),
                    60.verticalSpace,
                    InkWell(
                      child: Container(
                        height: 60.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                            color: AppColors.appSecondaryColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: Text(
                          'Import Wallet',
                          style: TextStyle(
                            color: AppColors.appMainColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            fontFamily: 'Poppins.Black',
                          ),
                        )),
                      ),
                      onTap: () {
                        Get.to(CreateNewWalletScreen());
                      },
                    ),
                    20.verticalSpace,
                    Container(
                      height: 60.h,
                      width: 310.w,
                      child: Center(
                          child: Text(
                        'Create New Wallet',
                        style: TextStyle(
                            color: AppColors.appSecondaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins-Black'),
                      )),
                    ),
                  ],
                ),
              ),
                            ),
                          ),
            ),
          ],
        ),
      ),
      ],
      )
    );
  }
}
