import 'package:crypto_wallet_app/widget/custom-appbar-widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app-color.dart';
import 'transaction-history-screen.dart';

class SendETHScreen extends StatelessWidget {
  const SendETHScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar:SimpleAppBar(),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: mq.width*0.05),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(onTap: () {
                          Navigator.pop(context);
                        },
                            child: Icon(Icons.arrow_back)),
                        SizedBox(
                          width: mq.width * 0.03,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Send ',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily:
                                    'assets/fonts/NunitoSans/NunitoSans-VariableFont_YTLC,opsz,wdth,wght.ttf'),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ETH',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily:
                                      'assets/fonts/NunitoSans/NunitoSans-VariableFont_YTLC,opsz,wdth,wght.ttf',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: AppColors.appSecondaryColor,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                      width:
                      mq.width*0.28,
                      height: mq.height*0.045,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.appSecondaryColor),
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.appMainColor),
                    ),
                  ],
                ),
                SizedBox(  height: MediaQuery.of(context).size.height * 0.05,),
                Container(
                  width: mq.width*0.9,
                  height: mq.height*0.12,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      SizedBox(height:mq.height*0.013,),
                      Container(
                        height: mq.height*0.07,
                        width: mq.height*0.9,
                        decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                        child:
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: mq.width*0.02),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/Ellipse 6.png'),
                                    radius: 18,
                                  ),
                                  SizedBox(width: 5,),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Account 01',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        'Balannce: 0.0 ETH',
                                        style: TextStyle(
                                            fontSize: 14,
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
                SizedBox(
                  height: mq.height * 0.02,
                ),
                Container(
                  width: mq.width*0.9,
                  height: mq.height*0.12,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: mq.height * 0.005,
                      ),
                      Container(
                        height: mq.height*0.07,
                        width: mq.height*0.9,
                        decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                        child:
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: mq.width * 0.05),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Search public address here',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(Icons.qr_code_2),
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
          SizedBox(
            height: mq.height * 0.005,
          ),
          Divider(color: Color.fromRGBO(189, 189, 189, 1),),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: mq.width*0.05),
            child: Column(
              children: [
                SizedBox(
                  height: mq.height * 0.05,
                ),
                SizedBox(
                  height: mq.height*0.07,
                  width: mq.height*0.9,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: " Token Name",
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
                  height: mq.height * 0.025,
                ),
                SizedBox(
                  height: mq.height*0.07,
                  width: mq.height*0.9,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: " Token ID",
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
                SizedBox(  height: MediaQuery.of(context).size.height * 0.05,),
                GestureDetector(onTap: () {
                  Get.to(TransactionHistoryScreen());
                },
                  child:
                  Container(
                    height: mq.height*0.07,
                    width: mq.height*0.9,
                    decoration:
                    BoxDecoration(color: AppColors.appSecondaryColor,borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                          'Next ',
                          style: TextStyle(
                            color: AppColors.appMainColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: 'Poppins.Black',
                          ),
                        )),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
