import 'package:carousel_slider/carousel_slider.dart';
import 'package:crypto_wallet_app/widget/slidericon-custom-widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/slider-icon-controller.dart';
import '../styles/app-color.dart';
import '../widget/custom-dialog-box.dart';
import 'import-NFT-screen.dart';
import 'import-custom-token-screen.dart';
import 'import-token-screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int index=0;
  @override

  Widget build(BuildContext context) {
    final controller = Get.put(SliderIconController());
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5.0),
      child:
      AppBar(
        backgroundColor: AppColors.appMainColor,
        automaticallyImplyLeading: false,
      ),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child:
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.format_line_spacing_sharp,color: AppColors.appMainColor,),
                    SizedBox(width: 25,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Ellipse 6.png',),
                          radius: 40,
                         // child: Image(image: AssetImage('assets/images/Ellipse 6.png',),),
                        ),
                        SizedBox(height:8),
                        Text('Account 01',style: TextStyle(color: AppColors.appMainColor,fontSize: 20,fontWeight: FontWeight.w600,fontFamily: 'Poppins'),),
                        SizedBox(height:8),
                        Text('0xtyur......74e3',style: TextStyle(color: AppColors.appMainColor,fontSize: 12,fontWeight: FontWeight.w600,fontFamily: 'Poppins'),),
                        SizedBox(height:8),
                        Text('0 USD',style: TextStyle(color: AppColors.appMainColor,fontSize: 12,fontWeight: FontWeight.w900,fontFamily: 'Poppins'),)
                      ],
                    ),
                    Container(
                      width: 93,
                      height: 32,
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
                width: 343,
                height: 209,
              ),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: () {
                    ShowDialog(context);
                  },
                    child: Container(child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                            children: [
                             Icon(Icons.arrow_downward,color: AppColors.appSecondaryColor,size: 35,),
                            Text('Receive',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w600 ,fontSize: 14),),
                            ],
                            ),
                      ),
                    ),
                                  width: 90,
                    height: 80,
                    decoration: BoxDecoration(color: Color.fromRGBO(129, 60, 241, 0.08),
                        borderRadius: BorderRadius.circular(5)),),
                  ),
                  Container(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.arrow_downward,color: AppColors.appSecondaryColor,size: 35,),
                          Text('Send',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w600 ,fontSize: 14),),
                        ],
                      ),
                    ),
                  ),
                    width: 90,
                    height: 80,
                    decoration: BoxDecoration(color: Color.fromRGBO(129, 60, 241, 0.08),
                        borderRadius: BorderRadius.circular(5)),),
                  Container(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.arrow_downward,color: AppColors.appSecondaryColor,size: 35,),
                          Text('Swap',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w600 ,fontSize: 14),),
                        ],
                      ),
                    ),
                  ),
                    width: 90,
                    height: 80,
                    decoration: BoxDecoration(color: Color.fromRGBO(129, 60, 241, 0.08),
                        borderRadius: BorderRadius.circular(5)),),
                ],
              ),
            ),
        SizedBox(height: 10,),
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
                width: MediaQuery.of(context).size.width*0.5,height: 10,),
            ],
          ),
          Column(
            children: [
            //  Text('Collectibles'),

             //
            ],
          ),
        ],
      ),
    ),
    SizedBox(height: 25,),
    Container(height: MediaQuery.of(context).size.height*0.5,
      width: MediaQuery.of(context).size.width,


      child: PageView(onPageChanged: (index) =>
          controller.updatePageIndicator(index),
        children: [
        Container(

          child: Column(
            children: [
              Container(height: 60, width: 310,
              color: Color.fromRGBO(129, 60, 241, 0.08),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
              SizedBox(height: 20,),
              Container(
                width:155 ,
              height: 52,
              child: Column(
                children: [
                  Text('Dont see your tokens?',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w500 ,fontSize: 14),),
                  SizedBox(height: 12,),
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
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Container(
            width:155 ,
            height: 52,
            child: Column(
              children: [
                Text('Dont see your NFT?',style: TextStyle(fontFamily:'Poppins-Black' ,fontWeight:FontWeight.w500 ,fontSize: 14),),
                SizedBox(height: 12,),
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
