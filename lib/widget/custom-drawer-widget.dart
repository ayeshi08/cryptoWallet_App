
import 'package:crypto_wallet_app/screen/setting-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app-color.dart';


class DrawerWidget extends StatelessWidget {
  // final UserModel userModel;
  const DrawerWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return
      Drawer(backgroundColor: AppColors.appMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: mq.width*0.05,),
          child: Wrap(
            runSpacing: 5,
            children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      //horizontal: mq.width*0.05,
                      vertical: mq.height*0.04),
                  child: Column(
                    children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('EOONIA',style: TextStyle(fontWeight:FontWeight.w700 ,fontFamily:'assets/fonts/NunitoSans/NunitoSans-VariableFont_YTLC,opsz,wdth,wght.ttf' ,fontSize: 26),),
                     Icon(Icons.close),
                      ],
                    ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(backgroundImage: AssetImage('assets/images/Ellipse 6.png',),radius: 44,),
                            Text('Account 01',style: TextStyle(fontSize: 20,fontFamily: 'Poppins',fontWeight: FontWeight.w600,color: AppColors.appSecondaryColor),),
                            Text('0xtyur......74e3',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.w600),),
                            Text('0 USD',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

            Container(
              child: Column(
                children: [
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('Wallet',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w500,
                      color:Color.fromRGBO(79, 79, 79, 1),)),
                    leading: Icon(Icons.info_outline,color:Color.fromRGBO(79, 79, 79, 1),),

                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('Transaction History',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w500,
                      color:Color.fromRGBO(79, 79, 79, 1),)),
                    leading: Icon(Icons.history_edu_rounded,color:Color.fromRGBO(79, 79, 79, 1),),

                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('Share Public Address',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w500,
                      color:Color.fromRGBO(79, 79, 79, 1,),)),
                    leading: Icon(Icons.history_edu_rounded,color:Color.fromRGBO(79, 79, 79, 1),),

                  ),
                  //SizedBox(height:mq.height*0.01 ,),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text('View on Etherson',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w500,
                      color:Color.fromRGBO(79, 79, 79, 1,),)),
                    leading: Icon(Icons.visibility_outlined,color:Color.fromRGBO(79, 79, 79, 1),),

                  ),
                ],
              ),
            ),
              SizedBox(height: mq.height*0.37,),
              Divider(color: AppColors.appSecondaryColor,),
              Container(
                height: mq.height*0.23,
                width:mq.width*0.8,
                child: Column(
                  children: [
                    GestureDetector(onTap: () {
                      Get.to(SettingScreen());
                    },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: mq.width*0.01),
                        child: ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          title: Text('Settings',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w500,
                            color:Color.fromRGBO(79, 79, 79, 1,),)),
                          leading: Icon(Icons.settings,color:Color.fromRGBO(79, 79, 79, 1),),

                        ),
                      ),
                    ),
                    ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text('Get Help',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w500,
                        color:Color.fromRGBO(79, 79, 79, 1,),)),
                      leading: Icon(Icons.info_outline,color:Color.fromRGBO(79, 79, 79, 1),),

                    ),
                    Container(decoration: BoxDecoration(color: Color.fromRGBO(235, 87, 87, 1),
                        borderRadius: BorderRadius.circular(8)),
                     // width:mq.width*0.8,

                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text('Logout',style: TextStyle(color:AppColors.appMainColor,),),
                        leading: Icon(Icons.logout,color: AppColors.appMainColor,),

                      ),
                    ),
                  ],
                ),
              ),

                ]
            ),
        ),

          );

  }
}
