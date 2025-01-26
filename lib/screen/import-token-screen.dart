import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/crypto-coin-list-model.dart';
import '../styles/app-color.dart';
import 'import-custom-token-screen.dart';

class ImportTokenScreen extends StatelessWidget {
  ImportTokenScreen({
    super.key,
  });
//CryptoCoinList cryptoCoinList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.appMainColor,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(25.0),
    child:
    AppBar(
    backgroundColor: AppColors.appMainColor,
    automaticallyImplyLeading: false,
    ),),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 15,),
                  Text(
                    'Import Token',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'NunitoSans'),
                  ),
                ],
              ),

        GestureDetector(onTap: () {
          Get.to(ImportCustomTokenScreen());
        },
          child: Container(
                    child: Center(
                        child: Text(
                      'Custom Token',
                      style: TextStyle(
                          color: AppColors.appMainColor,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
                    width: 125,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.appSecondaryColor),
                  ),
        ),

              ],
            ),
            SizedBox(height: 15,),
            Expanded(
              child: Container(
width: 320,
                height: 65,
                child: ListView.builder(
                   // shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: CryptoCoinList.CryptoCoins.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Card(
                           color: AppColors.appMainColor,
                            child: Container(decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12,width: 1),borderRadius: BorderRadius.circular(10)),
                              width: 320, height: 65,
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    CryptoCoinList.CryptoCoins[index].image.toString(),
                                  ),
                                ),
                                title: Text(
                                    CryptoCoinList.CryptoCoins[index].name.toString(),
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'Gilroy-Black')),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Container(
              width: 314,
              height: 60,
              decoration: BoxDecoration(
                  color: AppColors.appSecondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Import Token',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,

                  color:AppColors.appMainColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
