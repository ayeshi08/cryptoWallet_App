import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_color.dart';

void ShowDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      elevation: 10,
      child:
      SingleChildScrollView(
        child: Expanded(
          child: Container(
            width: 307.w,
          color: AppColors.appMainColor,
         // height: 407.h,
          child: Padding(
          padding:  EdgeInsets.all(16.w),
          child:

          Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Center(
              child: Text(
                'Receive',
                style: TextStyle(
                    fontSize: 18.sp, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
              ),
            ),
           10.verticalSpace,
            Center(
              child: Text(
                'Scan your QR Code to Receive Payment',
                style: TextStyle(
                    fontSize: 12.sp, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
              ),
            ),
            10.verticalSpace,
            Center(
              child: Container(

                child: Column(
                  children: [
                    Image(image: AssetImage('assets/images/qr-code 1.png'),
                    ),
                10.verticalSpace,
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '0xtyur......74e3',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.copy,
                                color: Color.fromRGBO(79, 79, 79, 1),
                              ),
                             20.horizontalSpace,
                              Icon(
                                Icons.share,
                                color: Color.fromRGBO(79, 79, 79, 1),
                              ),
                            ],
                          )
                        ],
                      ),
                      width: 309.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(248, 248, 248, 1),
                      ),
                    )
                  ],
                ),
              ),

            ),

          ],
          ),
          ),
          ),
        ),
      ),
      );
    },
  );
}
