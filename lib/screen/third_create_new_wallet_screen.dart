
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import 'welcome_back_screen.dart';

class CreateWalletThirdScreen extends StatefulWidget {
  const CreateWalletThirdScreen({super.key});

  @override
  State<CreateWalletThirdScreen> createState() => _CreateWalletThirdScreenState();
}
class _CreateWalletThirdScreenState extends State<CreateWalletThirdScreen> {

  @override
  Widget build(BuildContext context) {
    /*24 is for notification bar on Android*/
    final double uHeight = 35.h;
    //mq.height * 0.045;
    final double uWidth = 75.w;
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(
        backgroundColor: AppColors.appMainColor,
        title: Text("Create New Wallet"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(   horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/Group 7-2.png'),width: 274.w,height: 83.h,),
              10.verticalSpace,
              Text(
                'Write down in order',
                style: TextStyle(
                    fontFamily: 'Poppins-Black',
                    fontWeight: FontWeight.w500,
                    fontSize: 22.sp,
                    color: AppColors.TextColor),
              ),
              10.verticalSpace,
              Text(
                'This is your secret recovery. Write it down and save it somewhere This is your secret recovery. Write it down and save it somewhere',
                style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(152, 152, 152, 1),
                ),
              ),
              Container(
                width:310.w,
                height: 310.h,
                color:  Color.fromRGBO(248, 248, 248, 1),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: GridView.builder(  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,

                    mainAxisSpacing: 25.h,
                    crossAxisSpacing: 20.w,
                    childAspectRatio: (uWidth / uHeight),
                  ),

                    itemBuilder: (_, index) =>
                        Container(

                          decoration: BoxDecoration(color: AppColors.appMainColor,border:Border.all(color: AppColors.appSecondaryColor,width: 1.5.w),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Center(child: Text('-----',style: TextStyle(
                              fontFamily:'Poppins-Bold' ,fontWeight:FontWeight.bold ,fontSize: 12.sp,color: Color.fromRGBO(79, 79, 79, 1)
                          ),),),
                        ),

                    itemCount: SecretRecoveryPhraseItem.length,
                  ),
                ),),


              20.verticalSpace,
              InkWell(
                child: Container(
                  height: 60.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                      color: AppColors.appSecondaryColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: AppColors.appMainColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: 'Poppins.Black',
                        ),
                      )),
                ),
                onTap: () {
                     Get.to(WelcomeBackScreen());
                },
              ),
              20.verticalSpace,
              Align(alignment: Alignment.bottomCenter,
                child: Text.rich(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  final List<Map<String, String>> SecretRecoveryPhraseItem = [
    { 'text': 'guide',},
    { 'text': 'treat',},
    { 'text': 'strategy',},
    { 'text': 'useless',},
    { 'text': 'expand',},
    { 'text': 'sister',},
    { 'text': 'glove',},
    { 'text': 'basket',},
    { 'text': 'program',},
    { 'text': 'blue',},
    { 'text': 'project',},
    { 'text': 'inquiry',},
    { 'text': 'update',},
    { 'text': 'common',},
    { 'text': 'subject',},
  ];
}
