import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import '../widget/checkbox_widget.dart';
import 'second_create_new_wallet_screen.dart';

class CreateNewWalletScreen extends StatefulWidget {
  const CreateNewWalletScreen({super.key});

  @override
  State<CreateNewWalletScreen> createState() => _CreateNewWalletScreenState();
}

class _CreateNewWalletScreenState extends State<CreateNewWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: AppColors.appMainColor,titleSpacing: 0,
        title: Text("Create New Wallet"),
        leading: GestureDetector(onTap: () {

          Get.back();

        },
            child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,

        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/Group 7.png'),width: 274.w,height: 83.h,),
              20.verticalSpace,
              Text(
                'Create Password',
                style: TextStyle(
                    fontFamily: 'Poppins-Black',
                    fontWeight: FontWeight.w500,
                    fontSize: 22.sp,
                    color: AppColors.TextColor),
              ),
              20.verticalSpace,
              Text(
                'This password will unlock your wallet only on this device',
                style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(152, 152, 152, 1),
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 310.w,
                height: 60.h,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "New Password",
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
              20.verticalSpace,
              SizedBox(
                width: 310.w,
                height: 60.h,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Confirm Password",
                    fillColor: Color.fromRGBO(248, 248, 248, 1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
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
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckBoxWidget(),
                  Expanded(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text:
                          'I understand  crypto cannot recover this password for me',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(152, 152, 152, 1),
                          ),
                        ),
                        TextSpan(
                          text: 'Learn More',
                          style: TextStyle(fontSize: 12.sp,
                              fontWeight: FontWeight.bold, color: AppColors.appSecondaryColor),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
              30.verticalSpace,
              InkWell(
                child:
                Container(
                  height: 60.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                      color: AppColors.appSecondaryColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                        'Create Password',
                        style: TextStyle(
                          color: AppColors.appMainColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins.Black',
                        ),
                      )),
                ),
                onTap: () {
                     Get.to(CreateWalletSecondScreen());
                },
              ),
              30.verticalSpace,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Already have a wallet?  ',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color.fromRGBO(152, 152, 152, 1),
                        )),
                    TextSpan(
                      text: 'Import Wallet',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: AppColors.appSecondaryColor),
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
