import 'package:crypto_wallet_app/widget/custom-appbar-widget.dart';
import 'package:flutter/material.dart';

import '../styles/app-color.dart';
import '../widget/custom-dialog-box.dart';

class ReceiveETHScreen extends StatelessWidget {
  const ReceiveETHScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body: Padding(
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
            SizedBox(height: mq.height*0.02,),
            Align(alignment: Alignment.bottomRight,
              child:
              Text(
                'From',
                style: TextStyle(color: AppColors.appSecondaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 16),
              ),
            ),
            SizedBox(height: mq.height*0.02,),
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
                          'ETH',
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
            SizedBox(height: mq.height*0.04,),
            Text(
              '0',
              style: TextStyle(color: AppColors.appSecondaryColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 40),
            ),
            SizedBox(height: mq.height*0.04,),
            Text(
              'Balance: 0.0 ETH',
              style: TextStyle(color: Color.fromRGBO(79, 79, 79, 1),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 16),
            ),
            SizedBox(height: mq.height*0.4,),
            GestureDetector(onTap: () {
              ShowDialog(context);
            },
              child: Container(
                width: mq.width*0.9,
                height: mq.height*0.07,
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
      ),);
  }
}
