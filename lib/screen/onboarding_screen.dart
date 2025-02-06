import 'package:carousel_slider/carousel_slider.dart';
import 'package:crypto_wallet_app/styles/app_color.dart';
import 'package:crypto_wallet_app/widget/slidericon_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/sliderIcon_controller.dart';
import 'get_started_screen.dart';

class ImageSlider extends StatelessWidget {
  final List<Map<String, String>> sliderItems = [
    {
      'image': 'assets/images/sharing.png', // Replace with your image path
      'text': 'Trusted By Mission',
    },
    {
      'image':
          'assets/images/secure-server.png', // Replace with your image path
      'text': 'Safe Reliable and Super Fast',
    },
    {
      'image': 'assets/images/online-world.png', // Replace with your image path
      'text': 'Your Key to explore Web3',
    },
  ];
var find=Get.find<SliderIconController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(
        backgroundColor: AppColors.appMainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: sliderItems.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return ClipRRect(
                  child: Column(
                    children: [
                      Text(
                        sliderItems[index]['text']!,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins-Black',
                        ),
                      ),
                   12.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          //mq.width*0.1
                        ),
                        child: Material(
                          elevation: 20.r,
                          color: Colors.transparent,
                          child: Container(
                            height: 404.h,
                            //404,
                            width: 287.w,
                            decoration: BoxDecoration(
                              color: AppColors.appMainColor,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Center(
                              child: Container(
                                height: 270.h,
                                width: 270.w,
                                child: Image.asset(
                                  sliderItems[index]['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                height: 500.h,
                onPageChanged: (index, _) =>
                    find.updatePageIndicator(index),
                enlargeCenterPage: false,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
              ),
            ),
            10.verticalSpace,
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,),
              child: Text(
                'Here you can write desctroption of the page and find out what you want.',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat-cariable_wght',
                    color: Colors.black38),
              ),
            ),
            25.verticalSpace,
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    CircularContainer(
                      width:
                      find.carousalCurrentIndex.value == i ? 20 : 6,
                      height: 4.h,
                      margin:  EdgeInsets.only(right: 10.r),
                      backgroundColor: find.carousalCurrentIndex.value == i
                          ? AppColors.appSecondaryColor
                          : Colors.grey,
                    ),
                ],
              ),
            ),
            30.verticalSpace,
            GestureDetector(
                onTap: () {
                  Get.to(GetStartedScreen());
                },
                child: Container(
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.appSecondaryColor),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
