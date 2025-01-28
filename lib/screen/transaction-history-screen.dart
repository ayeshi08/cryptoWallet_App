import 'package:flutter/material.dart';

import '../styles/app-color.dart';
import '../widget/custom-appbar-widget.dart';
import 'splash-screen.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return  Scaffold(backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: mq.width*0.07),
        child: Column(
          children: [

            Container(
              child:
              Column(

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
                          text: 'Transaction History ',
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
                  SizedBox(height: mq.height*0.05,),
                  Container(decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: mq.width*0.04),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/Ellipse 6.png'),
                                radius: 18,
                              ),
                              SizedBox(
                                width: mq.width * 0.03,
                              ),
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
                  SizedBox(height:mq.height*0.07 ,),
                  Container(decoration: BoxDecoration(color: Color.fromRGBO(248, 248, 248, 1),),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: mq.width*0.04),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/Ellipse 6.png'),
                                radius: 18,
                              ),
                              SizedBox(
                                width: mq.width * 0.025,
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '50.00 ETH',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '10\$',
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
          ],
        ),
      ),
    );
  }
}
