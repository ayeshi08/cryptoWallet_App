import 'package:flutter/material.dart';

import '../styles/app-color.dart';

class ImportCustomTokenScreen extends StatelessWidget {
  const ImportCustomTokenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25.0),
        child: AppBar(
          backgroundColor: AppColors.appMainColor,
          automaticallyImplyLeading: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: mq.width * 0.03,
                  ),
                  Text(
                    'Import Custom Token',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'NunitoSans'),
                  ),
                ],
              ),
              SizedBox(
                height: mq.height * 0.03,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(mq.width * 0.04),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.error_outline),
                        SizedBox(
                          width: mq.width * 0.03,
                        ),
                        Expanded(
                          child: Text(
                            maxLines: null,
                            overflow: TextOverflow.visible,
                            'Anyone can  create token,  including fake versions of existing token. Learn more about scams and security risks.',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                width: mq.width * 0.88,
                height: mq.height * 0.18,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(8)),
              ),
              SizedBox(
                height: mq.height * 0.07,
              ),
              SizedBox(
                height: mq.height * 0.07,
                width: mq.height * 0.9,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Token Address",
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
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '0/42',
                      style: TextStyle(
                          color: Color.fromRGBO(152, 152, 152, 1),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  )),
              SizedBox(
                height: mq.height * 0.03,
              ),
              SizedBox(
                height: mq.height * 0.07,
                width: mq.height * 0.9,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Token Symbol",
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
                height: mq.height * 0.02,
              ),
              SizedBox(
                height: mq.height * 0.07,
                width: mq.height * 0.9,
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Token Decimal",
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
                height: mq.height * 0.02,
              ),
              Container(
                width: mq.width * 0.9,
                height: mq.height * 0.08,
                decoration: BoxDecoration(
                    color: AppColors.appSecondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'Import ',
                  style: TextStyle(
                    color: AppColors.appMainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'Poppins.Black',
                  ),
                )),
              ),
              SizedBox(
                height: mq.height * 0.021,
              ),
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: mq.width * 0.9,
                  height: mq.height * 0.08,
                  decoration: BoxDecoration(
                      color: AppColors.appMainColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: AppColors.appSecondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins.Black',
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
