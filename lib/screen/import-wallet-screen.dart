import 'package:crypto_wallet_app/widget/custom-appbar-widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app-color.dart';
import 'step1-create-new-wallet-screen.dart';

class ImportWalletScreen extends StatelessWidget {
  const ImportWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appSecondaryColor,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.14),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Import Account',
                        style: TextStyle(
                            fontFamily: 'Poppins-Black',
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: AppColors.appMainColor),
                      ),
                      Text(
                        'Import an exsiting wallet or create a new one',
                        style: TextStyle(
                          color: AppColors.appMainColor,
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: mq.height * 0.1,
          ),
          Expanded(
              child: Container(
            width: mq.width * 1,
            decoration: BoxDecoration(
              color: AppColors.appMainColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35.0),
                topLeft: Radius.circular(35.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mq.width * 0.055, vertical: mq.height * 0.07),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Import Account Details',
                      style: TextStyle(
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: mq.height * 0.04,
                    ),
                    SizedBox(
                      width: mq.width * 0.9,
                      height: mq.height * 0.07,
                      child: TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Secret Recovery Phrase",
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
                    SizedBox(
                      height: mq.height * 0.04,
                    ),
                    SizedBox(
                      width: mq.width * 0.9,
                      height: mq.height * 0.07,
                      child: TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Your Password",
                          //enabledBorder:InputBorder.none ,
                          //  focusedBorder:InputBorder.none ,
                          fillColor: Color.fromRGBO(248, 248, 248, 1),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Poppins-Regular",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(152, 152, 152, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mq.height * 0.09,
                    ),
                    InkWell(
                      child: Container(
                        width: mq.width * 0.9,
                        height: mq.height * 0.08,
                        decoration: BoxDecoration(
                            color: AppColors.appSecondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Import Wallet',
                          style: TextStyle(
                            color: AppColors.appMainColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: 'Poppins.Black',
                          ),
                        )),
                      ),
                      onTap: () {
                        Get.to(CreateNewWalletScreen());
                      },
                    ),
                    SizedBox(
                      height: mq.height * 0.02,
                    ),
                    Container(
                      width: mq.width * 0.9,
                      height: mq.height * 0.08,
                      child: Center(
                          child: Text(
                        'Create New Wallet',
                        style: TextStyle(
                            color: AppColors.appSecondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins-Black'),
                      )),
                    ),
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
