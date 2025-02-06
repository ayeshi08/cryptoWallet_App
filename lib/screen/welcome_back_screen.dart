import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import '../widget/custom_appbar_widget.dart';
import 'home_screen.dart';

class WelcomeBackScreen extends StatelessWidget {
  const WelcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.appSecondaryColor,
      appBar: CustomAppBar(),
       body: CustomScrollView(    slivers: [
         SliverFillRemaining(
         hasScrollBody: false,

         child: Column(
          children: [
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,),
             child: SingleChildScrollView(
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Text(
             'Welcome Back',
             style: TextStyle(
             fontFamily: 'Poppins-Black',
             fontWeight: FontWeight.w700,
             fontSize: 36.sp,
             color: AppColors.appMainColor),
             ),
             Text(
             'Please login to your account using your password',
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
             ),
            100.verticalSpace,
             Expanded(
             child: Container(
             decoration: BoxDecoration(
             color: AppColors.appMainColor,
             borderRadius: BorderRadius.only(
             topRight: Radius.circular(35.r),
             topLeft: Radius.circular(35.r),
             ),
             ),
             child: Padding(
             padding:  EdgeInsets.symmetric(
                 horizontal: 40.w,
                 vertical: 40.h),
             child:
             SingleChildScrollView(
             child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Text(
             'Enter Password to unlock',
             style: TextStyle(
             fontFamily: 'Poppins-Black',
             fontWeight: FontWeight.w500,
             fontSize: 16.sp),
             ),
             20.verticalSpace,
             SizedBox(
               width: 310.w,
               height: 60.h,
             child: TextFormField(
             decoration: new InputDecoration(
             hintText: "Password",
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
             InkWell(
             child: Container(
               height: 60.h,
               width: 310.w,
             decoration:
             BoxDecoration(color: AppColors.appSecondaryColor,borderRadius: BorderRadius.circular(10)),
             child: Center(
             child: Text(
             'Open Wallet',
             style: TextStyle(
             color: AppColors.appMainColor,
             fontWeight: FontWeight.w600,
             fontSize: 16.sp,
             fontFamily: 'Poppins.Black',
             ),
             )),
             ),
             onTap: () {
             Get.to(HomePageScreen());
             },
             ),
            50.verticalSpace,
               Align(alignment: Alignment.bottomCenter,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Cant login? You can erase your current wallet and  ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(152, 152, 152, 1),
                    )),
                TextSpan(
                  text: 'Setup New Wallet',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.appSecondaryColor),
                ),
              ],
            ),
          ),
               )

             ],
             ),
             ),
             ),
             )),
             ],
             ),
       ),
      ]
       ),
    );
  }
}
