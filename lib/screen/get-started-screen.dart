import 'package:crypto_wallet_app/screen/import-wallet-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app-color.dart';
import '../widget/custom-appbar-widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appSecondaryColor,
      appBar: CustomAppBar(),
      //automaticallyImplyLeading: false,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.0),
        child: Column(
          children: [
            Text(
              'Wallet Setup',
              style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: AppColors.appMainColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40,top:20),
              child: Text(
                'Import an exsiting wallet or create a new one',
                style: TextStyle(
                  color: AppColors.appMainColor,
                  fontFamily: 'Poppins-Black',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            Center(
              child: Container(width: 338,height: 338,
                child: Image(
                  image: AssetImage('assets/images/Sale-19.png'),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 314,
              child: Center(
                child: Text(
                  'Import Existing',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',color: AppColors.appSecondaryColor),
                ),
              ),
              decoration: BoxDecoration(
                color: AppColors.appMainColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(onTap: () {
              Get.to(ImportWalletScreen());
            },
              child: Material(elevation: 10,color: AppColors.appSecondaryColor,   borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 60,
                  width: 314,
                  child: Center(
                    child: Text(
                      'Create new',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins-Regular',color: AppColors.appMainColor),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.appSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
