import 'package:flutter/material.dart';
import '../styles/app-color.dart';
import 'onboarding-screen.dart';

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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ImageSlider()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar( backgroundColor: AppColors.appMainColor,),
        backgroundColor: AppColors.appMainColor,
        body: Center(
            child: Text(
              'Logo Here',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                  fontFamily: 'Popping-Bold',
                  color: AppColors.HeadingTextColor),
            )),
    );

  }
}
