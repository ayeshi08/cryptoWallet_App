import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/crypto-coin-list-model.dart';
import '../styles/app-color.dart';
import '../widget/custom-appbar-widget.dart';
import 'import-custom-token-screen.dart';

class ImportTokenScreen extends StatelessWidget {
  ImportTokenScreen({
    super.key,
  });
//CryptoCoinList cryptoCoinList;
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: AppColors.appMainColor,
      appBar: SimpleAppBar(),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: mq.width * 0.004),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Row(
                children: [
                  GestureDetector(onTap: () {
                    Navigator.pop(context);
                  },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: mq.width * 0.03,
                  ),
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
          child:
          Container(
                    child: Center(
                        child: Text(
                      'Custom Token',
                      style: TextStyle(
                          color: AppColors.appMainColor,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
          width:  mq.width*0.35,
            height: mq.height*0.045,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.appSecondaryColor),
                  ),
        ),

              ],
            ),
            SizedBox(
              width: mq.width * 0.05,
            ),
            Expanded(
              child: Container(
width: mq.width*0.94,
               // height:  mq.height*0.4,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: CryptoCoinList.CryptoCoins.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: mq.height * 0.01),
                          child: Card(
                           color: AppColors.appMainColor,
                            child: Container(decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12,width: 1),borderRadius: BorderRadius.circular(10)),
                              width: mq.width*0.94,
                              height: mq.height*0.08,
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
              width: mq.width*0.9,
              height: mq.height*0.08,
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
