import 'package:flutter/material.dart';

import '../styles/app-color.dart';

class ImportNFTScreen extends StatelessWidget {
  const ImportNFTScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: AppColors.appMainColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25.0),
        child: AppBar(
          backgroundColor: AppColors.appMainColor,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Import NFT',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'NunitoSans'),
                ),
              ],
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 310,
              height: 60,
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
            Align(alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('0/42',style: TextStyle(color: Color.fromRGBO(152, 152, 152, 1),
                      fontFamily: 'Poppins',fontWeight:FontWeight.w500 ,fontSize: 12),),
                )),
            SizedBox(height: 18,),
            SizedBox(
              width: 310,
              height: 60,
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
            SizedBox(height: 18,),
            SizedBox(
              width: 310,
              height: 60,
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
            SizedBox(height: 15,),            Container(
              width: 310,
              height: 60,
              decoration:
              BoxDecoration(color: AppColors.appSecondaryColor,borderRadius: BorderRadius.circular(10)),
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
            SizedBox(height: 22,),
            Material(elevation: 4,borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 310,
                height: 60,
                decoration:
                BoxDecoration(color: AppColors.appMainColor,borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
