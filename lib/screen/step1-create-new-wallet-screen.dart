import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app-color.dart';
import '../widget/checkbox-widget.dart';
import 'step2-create-new-wallet-screen.dart';

class CreateNewWalletScreen extends StatefulWidget {
  const CreateNewWalletScreen({super.key});

  @override
  State<CreateNewWalletScreen> createState() => _CreateNewWalletScreenState();
}

class _CreateNewWalletScreenState extends State<CreateNewWalletScreen> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: AppColors.appMainColor,titleSpacing: 0,
        title: Text("Create New Wallet"),
        leading: GestureDetector(onTap: () {

            Navigator.pop(context);

        },
            child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mq.width*0.1,
            vertical: mq.height*0.03
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/Group 7.png')),
              SizedBox(height: mq.height*0.039,),
              Text(
                'Create Password',
                style: TextStyle(
                    fontFamily: 'Poppins-Black',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: AppColors.TextColor),
              ),
              SizedBox(height: mq.height*0.012,),
              Text(
                'This password will unlock your wallet only on this device',
                style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(152, 152, 152, 1),
                ),
              ),
              SizedBox(height: mq.height*0.04,),
              SizedBox(
                height: mq.height*0.08,
                width: mq.height*0.9,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "New Password",
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
              SizedBox(height: mq.height*0.019,),
              SizedBox(
                width: mq.width * 0.9,
                height: mq.height * 0.07,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Confirm Password",
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
              SizedBox(height: mq.height*0.019,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckBoxWidget(),
                  Expanded(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text:
                          'I understand  crypto cannot recover this password for me',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(152, 152, 152, 1),
                          ),
                        ),
                        TextSpan(
                          text: 'Learn More',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: AppColors.appSecondaryColor),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
              SizedBox(height: mq.height*0.05,),
              InkWell(
                child:
                Container(
                  width: mq.width * 0.9,
                  height: mq.height * 0.08,
                  decoration: BoxDecoration(
                      color: AppColors.appSecondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                        'Create Password',
                        style: TextStyle(
                          color: AppColors.appMainColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Poppins.Black',
                        ),
                      )),
                ),
                onTap: () {
                     Get.to(CreateWalletSecondScreen());
                },
              ),
              SizedBox(height: mq.height*0.06,),
              Text.rich(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
