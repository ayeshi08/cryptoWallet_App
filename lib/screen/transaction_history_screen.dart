import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';
import '../widget/custom_appbar_widget.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,),
        child: Column(
          children: [

            Container(
              child:
              Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(onTap: () {

                        Get.back();

                      },
                          child: Icon(Icons.arrow_back)),
                    10.horizontalSpace,
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Transaction History ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.black,
                              fontFamily:
                              'NunitoSans'),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'ETH',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                                fontSize: 16.sp,
                                fontFamily:
                                'NunitoSans',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  25.verticalSpace,
                  Container(decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/Ellipse 6.png'),
                                radius: 18.r,
                              ),
                              13.horizontalSpace,
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Account 01',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Balannce: 0.0 ETH',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],

                              ),
                            ],
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                  38.verticalSpace,
                  Container(decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w,),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/Ellipse 6.png'),
                                radius: 18.r,
                              ),
                           13.horizontalSpace,
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '50.00 ETH',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '10\$',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],

                              ),
                            ],
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
