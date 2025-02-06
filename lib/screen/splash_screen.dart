import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../styles/app_color.dart';
import 'login_screen.dart';
import 'onboarding_screen.dart';

 late  Size mq;
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds before navigating to the home screen
    Future.delayed(Duration(seconds: 3), () {
     Get.offAll (ImageSlider());

    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar( backgroundColor: AppColors.appMainColor,),
        backgroundColor: AppColors.appMainColor,
        body: Center(
            child: Text(
              'Logo Here',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                  fontFamily: 'Popping-Bold',
                  color: AppColors.HeadingTextColor),
            )),
    );

  }
}
