import 'package:crypto_wallet_app/widget/custom-appbar-widget.dart';
import 'package:flutter/material.dart';

import '../styles/app-color.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body:
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: mq.width*0.05),
        child: Column(
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
                Text('Settings ',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily:
                        'assets/fonts/NunitoSans/NunitoSans-VariableFont_YTLC,opsz,wdth,wght.ttf'),

                ),
              ],
            ),
            SizedBox(height: mq.height*0.025,),
            Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Currency Conversion',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Poppins'),),
                  SizedBox(height: mq.height*0.011,),
                  Text('Currency conversion, Primary currency, Language & Search engine',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,fontFamily: 'Poppins'),),
                  SizedBox(height: mq.height*0.025,),
                  Container(
                    height: mq.height*0.07,
                    width: mq.height*0.9,
                    decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                    child:
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.height*0.01),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox( width:mq.width*0.01),
                              Text(
                                'USD',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mq.height*0.025,),
                  Text('Current Language',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Poppins'),),
                  SizedBox(height: mq.height*0.011,),
                  Text('Manage private key & Export wallet',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,fontFamily: 'Poppins'),),
                  SizedBox(height: mq.height*0.025,),
                  Container(
                    height: mq.height*0.07,
                    width: mq.height*0.9,
                    decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                    child:
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: mq.height*0.01),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox( width:mq.width*0.01),
                              Text(
                                'EN',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mq.height*0.025,),
                  Text('Show Private Key',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Poppins'),),
                  SizedBox(height: mq.height*0.011,),
                  Text('Tap and Hold to reveal and copy key',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,fontFamily: 'Poppins'),),
                  SizedBox(height: mq.height*0.1,),
                  Text('About Cryptomask',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Poppins'),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
