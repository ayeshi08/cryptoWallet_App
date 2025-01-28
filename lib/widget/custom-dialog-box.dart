import 'package:flutter/material.dart';

import '../styles/app-color.dart';

void ShowDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 10,
      child: Expanded(
        child: Container(width: 307,
        color: AppColors.appMainColor,
        height: 407,
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        Center(
            child: Text(
              'Receive',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(
              'Scan your QR Code to Receive Payment',
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
        
              child: Column(
                children: [
                  Container(height:182, width: 182,
                      child: Image(image: AssetImage('assets/images/qr-code 1.png'),
                      ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0xtyur......74e3',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.copy,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.share,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                          ],
                        )
                      ],
                    ),
                    width: 309,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 248, 1),
                    ),
                  )
                ],
              ),
            ),
        
          ),

        ],
        ),
        ),
        ),
      ),
      );
    },
  );
}
