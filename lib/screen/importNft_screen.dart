import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import '../widget/custom_appbar_widget.dart';

class ImportNFTScreen extends StatelessWidget {
  const ImportNFTScreen({super.key});

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
                    'Import NFT',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'NunitoSans'),
                  ),
                ],
              ),
              30.verticalSpace,
              SizedBox(
                height: 60.h,
                width: 310.w,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Token Address",
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
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,),
                    child: Text(
                      '0/42',
                      style: TextStyle(
                          color: Color.fromRGBO(152, 152, 152, 1),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp),
                    ),
                  )),
          22.verticalSpace,
              SizedBox(
                height: 60.h,
                width: 310.w,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Token Symbol",
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
            22.verticalSpace,
              SizedBox(
                height: 60.h,
                width: 310.w,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Token Decimal",
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
          30.verticalSpace,
              Container(
                width: 314.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: AppColors.appSecondaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                    child: Text(
                  'Import ',
                  style: TextStyle(
                    color: AppColors.appMainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins.Black',
                  ),
                )),
              ),
             15.verticalSpace,
              Material(
                elevation: 4.r,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 314.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: AppColors.appMainColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: AppColors.appSecondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins.Black',
                    ),
                  )),
                ),
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
