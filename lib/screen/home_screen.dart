import 'package:crypto_wallet_app/widget/custom_drawer_widget.dart';
import 'package:crypto_wallet_app/widget/slidericon_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/sliderIcon_controller.dart';
import '../styles/app_color.dart';
import '../widget/custom_appbar_widget.dart';
import 'importNft_screen.dart';
import 'import-token-screen.dart';
import 'receiveEth_screen.dart';
import 'sendEth_screen.dart';
import 'swapEth_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(
              10.w,
              ),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:
                    15.w,vertical: 10.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Icon(
                            Icons.format_line_spacing_sharp,
                            color: AppColors.appMainColor,
                          )),
                      15.horizontalSpace,
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/Ellipse 6.png',
                            ),
                            radius: 40.r,
                          ),
                          8.verticalSpace,
                          Text(
                            'Account 01',
                            style: TextStyle(
                                color: AppColors.appMainColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins'),
                          ),
                          10.verticalSpace,
                          Text(
                            '0xtyur......74e3',
                            style: TextStyle(
                                color: AppColors.appMainColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins'),
                          ),
                          5.verticalSpace,
                          Text(
                            '0 USD',
                            style: TextStyle(
                                color: AppColors.appMainColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                      Container(
                        width: 93.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            color: AppColors.appMainColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: Text(
                          'Ethereum',
                          style: TextStyle(
                            color: AppColors.appSecondaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins.Black',
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: AppColors.appSecondaryColor,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 343.w,
                height: 300.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
             15.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(ReceiveETHScreen());
                    },
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(
                         10.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_downward,
                                color: AppColors.appSecondaryColor,
                                size: 35.sp,
                              ),
                              Text(
                                'Receive',
                                style: TextStyle(
                                    fontFamily: 'Poppins-Black',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      width: 90.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(129, 60, 241, 0.08),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SendETHScreen());
                    },
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(
                          10.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: AppColors.appSecondaryColor,
                                size: 35.sp,
                              ),
                              Text(
                                'Send',
                                style: TextStyle(
                                    fontFamily: 'Poppins-Black',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      width: 90.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(129, 60, 241, 0.08),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SwapETHScreen());
                    },
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(
                    10.w,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    color: AppColors.appSecondaryColor,
                                    size: 35.sp,
                                  ),
                                  Icon(
                                    Icons.arrow_downward,
                                    color: AppColors.appSecondaryColor,
                                    size: 35.sp,
                                  ),
                                ],
                              ),
                              Text(
                                'Swap',
                                style: TextStyle(
                                    fontFamily: 'Poppins-Black',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      width: 90.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(129, 60, 241, 0.08),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ],
              ),
            ),
          10.verticalSpace,
            Obx(
              () => Row(
                children: [
                  Text(
                    SliderText[index]['text']!,
                    style: TextStyle(
                      color: Get.find<SliderIconController>()
                                  .carousalCurrentIndex
                                  .value ==
                              [index]
                          ? AppColors.appSecondaryColor
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => Row(
                children: [
                  Row(
                    children: [
                      // Text('Tokens'),

                      for (int i = 0; i < 2; i++)
                        CircularContainer(
                          backgroundColor: Get.find<SliderIconController>()
                                      .carousalCurrentIndex
                                      .value ==
                                  i
                              ? AppColors.appSecondaryColor
                              : Colors.grey,
                          width: 180.w,
                          height: 5.h,
                        ),
                    ],
                  ),
                ],
              ),
            ),
           20.verticalSpace,
            Container(
               height:400.h,
               width:375.w,
              child: PageView(
                onPageChanged: (index) =>
                    Get.find<SliderIconController>().updatePageIndicator(index),
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                        width: 310.w,
                        height: 60.h,
                        color: Color.fromRGBO(129, 60, 241, 0.08),
                        child: Padding(
                          padding: EdgeInsets.all(
                           5.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(radius: 17.r,
                                    backgroundImage: AssetImage(
                                        'assets/images/Ellipse 6.png',),
                                  ),
                                 10.horizontalSpace,
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '0.00 THETA',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins-Bold'),
                                        ),
                                        Text(
                                          '0\$',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins-Bold'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                   20.verticalSpace,
                      Column(
                        children: [
                          Text(
                            'Dont see your tokens?',
                            style: TextStyle(
                                fontFamily: 'Poppins-Black',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          ),
                         10.verticalSpace,
                          GestureDetector(
                              onTap: () {
                                Get.to(ImportTokenScreen());
                              },
                              child: Text(
                                'Import Token',
                                style: TextStyle(
                                    fontFamily: 'Poppins-Black',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColors.appSecondaryColor),
                              ))
                        ],
                      ),
                    ],
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 80.h),
                    child: Column(
                      children: [
                        Text(
                          'Dont see your NFT?',
                          style: TextStyle(
                              fontFamily: 'Poppins-Black',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                        10.verticalSpace,
                        GestureDetector(
                            onTap: () {
                              Get.to(ImportNFTScreen());
                            },
                            child: Text(
                              'Import NFT',
                              style: TextStyle(
                                  fontFamily: 'Poppins-Black',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: AppColors.appSecondaryColor),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Map<String, String>> SliderText = [
    {
      'text': 'Tokens',
    },
    {
      'text': 'Collectibles',
    }
  ];
}
