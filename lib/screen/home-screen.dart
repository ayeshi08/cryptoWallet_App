
import 'package:crypto_wallet_app/widget/custom-drawer-widget.dart';
import 'package:crypto_wallet_app/widget/slidericon-custom-widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/slider-icon-controller.dart';
import '../styles/app-color.dart';
import '../widget/custom-appbar-widget.dart';
import '../widget/custom-dialog-box.dart';
import '../widget/custom-drawer-widget.dart';
import 'import-NFT-screen.dart';
import 'import-token-screen.dart';
import 'receive-ETH-screen.dart';
import 'send-ETH-screen.dart';
import 'swap-ETH-screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int index=0;
  @override

  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    final controller = Get.put(SliderIconController());
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),
       drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding:  EdgeInsets.all(
                mq.width*0.02,
       ),
              child: Container(
                child:
              Padding(
                padding:  EdgeInsets.all(mq.width*0.04,),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: (){
                      Scaffold.of(context).openDrawer();

                    },
                        child: Icon(Icons.format_line_spacing_sharp,color: AppColors.appMainColor,)),
                    SizedBox(
                      height: mq.width *0.01,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Ellipse 6.png',),
                          radius: 40,
                         // child: Image(image: AssetImage('assets/images/Ellipse 6.png',),),
                        ),
                        SizedBox(
                          height: mq.height *0.015,
                        ),
                        Text('Account 01',style: TextStyle(color: AppColors.appMainColor,fontSize: 20,fontWeight: FontWeight.w600,fontFamily: 'Poppins'),),
                        SizedBox(
                          height: mq.height *0.015,
                        ),
                        Text('0xtyur......74e3',style: TextStyle(color: AppColors.appMainColor,fontSize: 12,fontWeight: FontWeight.w600,fontFamily: 'Poppins'),),
                        SizedBox(
                          height: mq.height *0.01,
                        ),
                        Text('0 USD',style: TextStyle(color: AppColors.appMainColor,fontSize: 12,fontWeight: FontWeight.w900,fontFamily: 'Poppins'),)
                      ],
                    ),
                    Container(
                      width:
                      mq.width*0.28,
                      height: mq.height*0.045,
                      decoration: BoxDecoration(
                          color: AppColors.appMainColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                            'Ethereum',
                            style: TextStyle(
                              color: AppColors.appSecondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: 'Poppins.Black',
                            ),
                          )),
                    ),
                  ],
                ),
              ),
                decoration: BoxDecoration(
                    color: AppColors.appSecondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                width: mq.width*0.96,
                height: mq.height*0.29,
              ),

            ),
            Padding(
              padding:  EdgeInsets.all(mq.width*0.04,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: () {
                    Get.to(ReceiveETHScreen());
                  },
                    child: Container(
                      child:
                    Padding(
                      padding:  EdgeInsets.all(mq.width*0.015,),
                      child: Center(
                        child: Column(
                            children: [
                             Icon(Icons.arrow_downward,color: AppColors.appSecondaryColor,size: 35,),
                            Text('Receive',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w600 ,fontSize: 14),),
                            ],
                            ),
                      ),
                    ),
                      width: mq.width*0.26,

                      height: mq.height*0.11,
                    decoration: BoxDecoration(color: Color.fromRGBO(129, 60, 241, 0.08),
                        borderRadius: BorderRadius.circular(5)),),
                  ),
                  GestureDetector(onTap: () {
                      Get.to(SendETHScreen());
                  },
                    child: Container(child:
                    Padding(
                      padding:  EdgeInsets.all(mq.width*0.015,),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(Icons.arrow_upward,color: AppColors.appSecondaryColor,size: 35,),
                            Text('Send',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w600 ,fontSize: 14),),
                          ],
                        ),
                      ),
                    ),
                      width: mq.width*0.26,

                      height: mq.height*0.11,
                      decoration: BoxDecoration(color: Color.fromRGBO(129, 60, 241, 0.08),
                          borderRadius: BorderRadius.circular(5)),),
                  ),
                  GestureDetector(onTap: () {
                    Get.to(SwapETHScreen());
                  },
                    child: Container(child:
                    Padding(
                      padding:  EdgeInsets.all(mq.width*0.015,),
                      child: Center(
                        child: Column(
                          children: [
                            Row(children: [
                              Icon(Icons.arrow_upward,color: AppColors.appSecondaryColor,size: 35,),
                              Icon(Icons.arrow_downward,color: AppColors.appSecondaryColor,size: 35,),
                            ],),
                            Text('Swap',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w600 ,fontSize: 14),),
                          ],
                        ),
                      ),
                    ),
                      width: mq.width*0.26,

                      height: mq.height*0.11,
                      decoration: BoxDecoration(color: Color.fromRGBO(129, 60, 241, 0.08),
                          borderRadius: BorderRadius.circular(5)),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mq.height * 0.025,
            ),
            Obx( () =>
           Row(

             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [

                 Text(
                   SliderText[index]['text']!,style: TextStyle(color:controller.carousalCurrentIndex.value==[index] ? AppColors.appSecondaryColor :Colors.grey, ),),

               ],
              ),
            ),
    Obx( () =>
    Row(
        children: [
          Row(
            children: [
             // Text('Tokens'),

              for (int i = 0; i < 2; i++)
              CircularContainer(backgroundColor:  controller.carousalCurrentIndex.value==i ? AppColors.appSecondaryColor :Colors.grey,
                width: mq.width*0.5,
                height: mq.height*0.01,),
            ],
          ),
        ],
      ),
    ),
            SizedBox(
              height: mq.height * 0.027,
            ),
    Container(height: mq.height*0.5,
      width: mq.width*1,

      child: PageView(onPageChanged: (index) =>
          controller.updatePageIndicator(index),
        children: [
        Container(

          child: Column(
            children: [
              Container(
                width: mq.width * 0.9,
                height: mq.height * 0.07,
              color: Color.fromRGBO(129, 60, 241, 0.08),
              child: Padding(
                padding: EdgeInsets.all(  mq.width*0.02,),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/images/Ellipse 6.png'),
                        ),
                        SizedBox(width: 10,),
                        Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('0.00 THETA',style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w400,fontFamily:'Poppins-Bold' ),),
                          Text('0\$',style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w400,fontFamily:'Poppins-Bold' ),),
                        ],),

                      ],
                    ),
                Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),),
              SizedBox(
                height: mq.height * 0.027,
              ),
              Container(
                width: mq.width * 0.5,
                height: mq.height * 0.1,
              child: Column(
                children: [
                  Text('Dont see your tokens?',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w500 ,fontSize: 14),),
                  SizedBox(
                    height: mq.height * 0.02,
                  ),
                  GestureDetector(onTap: () {
                    Get.to(ImportTokenScreen());
                  },
                      child: Text('Import Token',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w500 ,fontSize: 14,color: AppColors.appSecondaryColor),))
                ],
              ),),
            ],
          )
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: mq.height*0.1),
          child: Container(
            width: mq.width * 0.5,
            height: mq.height * 0.1,
            child: Column(
              children: [
                Text('Dont see your NFT?',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w500 ,fontSize: 14),),
                SizedBox(
                  width: mq.width * 0.07,
                ),
                GestureDetector(onTap: () {
                  Get.to(ImportNFTScreen());
                },
                    child: Text('Import NFT',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w500 ,fontSize: 14,color: AppColors.appSecondaryColor),))
              ],
            ),),
        ),
      ],),
    )

          ],
        ),
      ),
    );
  }
  List<Map<String, String>> SliderText =[
    {
      'text': 'Tokens',
    },
    {
      'text': 'Collectibles',
    }
];
}
