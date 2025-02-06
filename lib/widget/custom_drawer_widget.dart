import 'package:crypto_wallet_app/screen/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../styles/app_color.dart';

class DrawerWidget extends StatelessWidget {
  // final UserModel userModel;
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: AppColors.appMainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.r),
            bottomRight: Radius.circular(15.r)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: Wrap(runSpacing: 5, children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 35.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'EOONIA',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'NunitoSans',
                            fontSize: 26.sp),
                      ),
                      Icon(Icons.close),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/Ellipse 6.png',
                          ),
                          radius: 44.r,
                        ),
                        Text(
                          'Account 01',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: AppColors.appSecondaryColor),
                        ),
                        Text(
                          '0xtyur......74e3',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '0 USD',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('Wallet',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(79, 79, 79, 1),
                        )),
                    leading: Icon(
                      Icons.info_outline,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('Transaction History',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(79, 79, 79, 1),
                        )),
                    leading: Icon(
                      Icons.history_edu_rounded,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('Share Public Address',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(
                            79,
                            79,
                            79,
                            1,
                          ),
                        )),
                    leading: Icon(
                      Icons.history_edu_rounded,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                  //SizedBox(height:mq.height*0.01 ,),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('View on Etherson',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(
                            79,
                            79,
                            79,
                            1,
                          ),
                        )),
                    leading: Icon(
                      Icons.visibility_outlined,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                ],
              ),
            ),
         // 50.verticalSpace,
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 25.h),
              child: Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(SettingScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: mq.width * 0.01),
                        child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          title: Text('Settings',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(
                                  79,
                                  79,
                                  79,
                                  1,
                                ),
                              )),
                          leading: Icon(
                            Icons.settings,
                            color: Color.fromRGBO(79, 79, 79, 1),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text('Get Help',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(
                              79,
                              79,
                              79,
                              1,
                            ),
                          )),
                      leading: Icon(
                        Icons.info_outline,
                        color: Color.fromRGBO(79, 79, 79, 1),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(235, 87, 87, 1),
                          borderRadius: BorderRadius.circular(8.r)),
                      // width:mq.width*0.8,
        
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text(
                          'Logout',
                          style: TextStyle(fontSize: 16.sp,
                            color: AppColors.appMainColor,
                          ),
                        ),
                        leading: Icon(
                          Icons.logout,
                          color: AppColors.appMainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
