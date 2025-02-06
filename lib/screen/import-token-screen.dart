import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../model/cryptoCoin_list_model.dart';
import '../styles/app_color.dart';
import '../widget/custom_appbar_widget.dart';
import 'import_custom_token_screen.dart';

class ImportTokenScreen extends StatelessWidget {
  ImportTokenScreen({
    super.key,
  });
//CryptoCoinList cryptoCoinList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                       Get.back();
                        },
                        child: Icon(Icons.arrow_back)),
                    24.horizontalSpace,
                    Text(
                      'Import Token',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'NunitoSans'),
                    ),
                  ],
                ),
                12.horizontalSpace,
                GestureDetector(
                  onTap: () {
                    Get.to(ImportCustomTokenScreen());
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      'Custom Token',
                      style: TextStyle(
                          color: AppColors.appMainColor,
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    )),
                    width:125.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: AppColors.appSecondaryColor),
                  ),
                ),
              ],
            ),
            15.verticalSpace,
            Expanded(
              child: Container(
                width: 320.w,
                // height:  mq.height*0.4,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: CryptoCoinList.CryptoCoins.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8.h,),
                          child: Card(
                            color: AppColors.appMainColor,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12, width: 1.w),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 320.w,
                              height: 65.h,
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    CryptoCoinList.CryptoCoins[index].image
                                        .toString(),
                                  ),
                                ),
                                title: Text(
                                    CryptoCoinList.CryptoCoins[index].name
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: 'Gilroy-Black')),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Container(
              width: 314.w,
              height: 60.h,
              decoration: BoxDecoration(
                  color: AppColors.appSecondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Import Token',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: AppColors.appMainColor),
                ),
              ),
            ),
            12.verticalSpace,
          ],
        ),
      ),
    );
  }
}
