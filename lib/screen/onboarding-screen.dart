import 'package:carousel_slider/carousel_slider.dart';
import 'package:crypto_wallet_app/styles/app-color.dart';
import 'package:crypto_wallet_app/widget/slidericon-custom-widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/slider-icon-controller.dart';
import 'get-started-screen.dart';

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

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SliderIconController());
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(
        backgroundColor: AppColors.appMainColor,
      ),
      body: Column(
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins-Black',
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Material(
                        elevation: 12,
                        color: Colors.transparent,
                        child: Container(
                          height: 404,
                          width: 287,
                          decoration: BoxDecoration(
                            color: AppColors.appMainColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Container(
                              height: 270,
                              width: 270,
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
              height: 450,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  CircularContainer(
                    width: controller.carousalCurrentIndex.value==i ? 20 : 6,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value==i ? AppColors.appSecondaryColor :Colors.grey,
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 81,
            width: 287,
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Here you can write desctroption of the page and find out what you want.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat-cariable_wght',
                      color: Colors.black38),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
              onTap: () {
                Get.to(GetStartedScreen());
              },
              child: Container(
                child: Text(
                  'SKIP',
                  style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.appSecondaryColor),
                ),
              ))
        ],
      ),
    );
  }
}
