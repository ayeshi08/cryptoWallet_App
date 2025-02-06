import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';

class ImportCustomTokenScreen extends StatelessWidget {
  const ImportCustomTokenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25.0),
        child: AppBar(
          backgroundColor: AppColors.appMainColor,
          automaticallyImplyLeading: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,),
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
                    'Import Custom Token',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'NunitoSans'),
                  ),
                ],
              ),
              22.verticalSpace,
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.error_outline),
                        14.horizontalSpace,
                        Expanded(
                          child: Text(
                            maxLines: null,
                            overflow: TextOverflow.visible,
                            'Anyone can  create token,  including fake versions of existing token. Learn more about scams and security risks.',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                width: 315.w,
                height: 200.h,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(8)),
              ),
              20.verticalSpace,
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
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '0/42',
                      style: TextStyle(
                          color: Color.fromRGBO(152, 152, 152, 1),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp),
                    ),
                  )),
             15.verticalSpace,
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
        14.verticalSpace,
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
              14.verticalSpace,
              Container(
                height: 60.h,
                width: 310.w,
                decoration: BoxDecoration(
                    color: AppColors.appSecondaryColor,
                    borderRadius: BorderRadius.circular(10)),
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
                  height: 60.h,
                  width: 310.w,
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
