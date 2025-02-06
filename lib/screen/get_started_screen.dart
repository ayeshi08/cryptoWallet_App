import 'package:crypto_wallet_app/screen/import-wallet-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import '../widget/custom_appbar_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appSecondaryColor,
      appBar: CustomAppBar(),
      //automaticallyImplyLeading: false,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet Setup',
                style: TextStyle(
                    fontFamily: 'Poppins-Black',
                    fontWeight: FontWeight.w700,
                    fontSize: 36.sp,
                    color: AppColors.appMainColor),
              ),
            17.verticalSpace,
              Text(
                'Import an exsiting wallet or create a new one',
                style: TextStyle(
                  color: AppColors.appMainColor,
                  fontFamily: 'Poppins-Black',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
              ),
              Center(
                child: Container(
                  width: 338.w,
                  height: 338.h,
                  child: Image(
                    image: AssetImage('assets/images/Sale-19.png'),
                  ),
                ),
              ),
              Container(
                height: 60.h,
                width: 310.w,
                child: Center(
                  child: Text(
                    'Import Existing',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins-Regular',
                        color: AppColors.appSecondaryColor),
                  ),
                ),
                decoration: BoxDecoration(
                  color: AppColors.appMainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
             40.verticalSpace,
              GestureDetector(
                onTap: () {
                  Get.to(ImportWalletScreen());
                },
                child: Material(
                  elevation: 10.r,
                  color: AppColors.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 60.h,
                    width: 310.w,
                    child: Center(
                      child: Text(
                        'Create new',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins-Regular',
                            color: AppColors.appMainColor),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.appSecondaryColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
              ),
              15.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
