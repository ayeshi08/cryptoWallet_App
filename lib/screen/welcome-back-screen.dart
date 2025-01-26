import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app-color.dart';
import '../widget/custom-appbar-widget.dart';
import 'home-screen.dart';

class WelcomeBackScreen extends StatelessWidget {
  const WelcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.appSecondaryColor,
      appBar: CustomAppBar(),
       body: Column(
        children: [
        Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.0),
    child: SingleChildScrollView(
    child: Column(
    children: [
    Text(
    'Welcome Back',
    style: TextStyle(
    fontFamily: 'Poppins-Black',
    fontWeight: FontWeight.w700,
    fontSize: 36,
    color: AppColors.appMainColor),
    ),
    Padding(
    padding: EdgeInsets.only(left: 40, right: 40, top: 20),
    child: Text(
    'Please login to your account using your password',
    style: TextStyle(
    color: AppColors.appMainColor,
    fontFamily: 'Poppins-Black',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    SizedBox(
    height: 35,
    ),
    Expanded(
    child: Container(
    //height: double.infinity,
  //  width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    color: AppColors.appMainColor,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(35.0),
    topLeft: Radius.circular(35.0),
    ),
    ),
    child: Padding(
    padding: const EdgeInsets.only(top: 40.0, left: 45, right: 45),
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
    fontSize: 16),
    ),
    SizedBox(
    height: 25,
    ),
    SizedBox(
    width: 310,
    height: 40,
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
    fontSize: 14,
    fontWeight: FontWeight.w400,
    ),
    ),
    ),

    SizedBox(height: 70,),
    InkWell(
    child: Container(
    width: 310,
    height: 60,
    decoration:
    BoxDecoration(color: AppColors.appSecondaryColor,borderRadius: BorderRadius.circular(10)),
    child: Center(
    child: Text(
    'Open Wallet',
    style: TextStyle(
    color: AppColors.appMainColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    fontFamily: 'Poppins.Black',
    ),
    )),
    ),
    onTap: () {
    Get.to(HomePageScreen());
    },
    ),
    SizedBox(height: 40,),
      Align(alignment: Alignment.bottomCenter,
        child: Container(width:296 ,height: 42,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Cant login? You can erase your current wallet and  ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(152, 152, 152, 1),
                    )),
                TextSpan(
                  text: 'Setup New Wallet',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.appSecondaryColor),
                ),
              ],
            ),
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
    );
  }
}
