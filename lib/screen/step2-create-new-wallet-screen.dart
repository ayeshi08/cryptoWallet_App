
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app-color.dart';
import 'step3-create-new-wallet-screen.dart';

class CreateWalletSecondScreen extends StatefulWidget {
  const CreateWalletSecondScreen({super.key});

  @override
  State<CreateWalletSecondScreen> createState() => _CreateWalletSecondScreenState();
}
class _CreateWalletSecondScreenState extends State<CreateWalletSecondScreen> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = 35;
    final double itemWidth = 75;
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(
        backgroundColor: AppColors.appMainColor,
        title: Text("Create New Wallet"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/Group 7-1.png')),
              SizedBox(
                height: 40,
              ),
              Text(
                'Secret Recovery Phrase',
                style: TextStyle(
                    fontFamily: 'Poppins-Black',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: AppColors.TextColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'This is your secret recovery. Write it down and save it somewhere This is your secret recovery. Write it down and save it somewhere',
                style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(152, 152, 152, 1),
                ),
              ),
            Container(width:310 ,height: 310,
             color:  Color.fromRGBO(248, 248, 248, 1),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: GridView.builder(  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                mainAxisSpacing: 24,
                crossAxisSpacing: 15,
                childAspectRatio: (itemWidth / itemHeight),
              ),

                itemBuilder: (_, index) =>
                    Container(
                        margin: EdgeInsets.all(0.8),
                        decoration: BoxDecoration(color: AppColors.appMainColor,border:Border.all(color: AppColors.appSecondaryColor,width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: Text(SecretRecoveryPhraseItem[index]['text']!,style: TextStyle(
                          fontFamily:'Poppins' ,fontWeight:FontWeight.w400 ,fontSize: 12,color: Color.fromRGBO(79, 79, 79, 1)
                        ),),),
                    ),
                    //FlutterLogo(),
                itemCount: SecretRecoveryPhraseItem.length,
              ),
            ),),



              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  width: 310,
                  height: 60,
                  decoration: BoxDecoration(
                      color: AppColors.appSecondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Continue',
                    style: TextStyle(
                      color: AppColors.appMainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Poppins.Black',
                    ),
                  )),
                ),
                onTap: () {
                     Get.to(CreateWalletThirdScreen());
                },
              ),
              SizedBox(
                height: 20,
              ),
              Align(alignment: Alignment.bottomCenter,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Already have a wallet?  ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(152, 152, 152, 1),
                          )),
                      TextSpan(
                        text: 'Import Wallet',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: AppColors.appSecondaryColor),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  final List<Map<String, String>> SecretRecoveryPhraseItem = [
    { 'text': 'guide',},
    { 'text': 'treat',},
    { 'text': 'strategy',},
    { 'text': 'useless',},
    { 'text': 'expand',},
    { 'text': 'sister',},
    { 'text': 'glove',},
    { 'text': 'basket',},
    { 'text': 'program',},
    { 'text': 'blue',},
    { 'text': 'project',},
    { 'text': 'inquiry',},
    { 'text': 'update',},
    { 'text': 'common',},
    { 'text': 'subject',},
  ];
}
