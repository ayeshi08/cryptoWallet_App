import 'package:crypto_wallet_app/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_color.dart';

class loging extends StatelessWidget {
  loging({super.key});

  @override
  //homeController controller = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/secure-server.png',
                ),
                height: 200,
                width: 200,
              ),
              12.verticalSpace,
              TextFormField(
                decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26)),
                    labelText: ' Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Gilroy-Medium',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45)),
              ),
              12.verticalSpace,
              TextFormField(
                decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26)),
                    labelText: ' Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Gilroy-Medium',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45)),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              //   child:
              //   Obx(
              //         () => TextFormField(
              //       obscureText: controller.isPasswordHidden.value,
              //       //   keyboardType: TextInputType.visiblePassword,
              //
              //       decoration: InputDecoration(
              //           border: UnderlineInputBorder(
              //             borderSide: BorderSide(color: Colors.black12, width: 2),
              //           ),
              //           suffix: InkWell(
              //             child: Padding(
              //               padding: EdgeInsets.only(right: 18.0),
              //               child: Icon(
              //                 controller.isPasswordHidden.value
              //                     ? Icons.visibility
              //                     : Icons.visibility_off,
              //                 color: Colors.black,
              //                 size: 20,
              //               ),
              //             ),
              //             onTap: () {
              //               controller.isPasswordHidden.value =
              //               !controller.isPasswordHidden.value;
              //             },
              //           ),
              //           focusedBorder: UnderlineInputBorder(
              //             borderSide: BorderSide(color: Colors.black45),
              //           ),
              //           labelText: ' Password',
              //           labelStyle: TextStyle(
              //               fontFamily: 'Gilroy-Medium',
              //               fontSize: 14,
              //               fontWeight: FontWeight.w600,
              //               color: Colors.black)),
              //     ),
              //   ),
              // ),
              12.verticalSpace,
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot Password?')),
              12.verticalSpace,
              InkWell(
                onTap: () {
                  // Get.to( nav  ());
                },
                child: Container(
                  width: 300.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: AppColors.appSecondaryColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColors.appSecondaryColor,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Log In',
                    style: TextStyle(
                        color: AppColors.appMainColor,
                        fontFamily: 'Poppins-Black',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              18.verticalSpace,
              Container(
                width: 300.w,
                height: 60.h,
                decoration: BoxDecoration(color: Colors.red,
                 // color: AppColors.appMainColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColors.appSecondaryColor,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                        'http://pngimg.com/uploads/google/google_PNG19635.png'),
                    Text(
                      'Gmail',
                      style: TextStyle(
                          color: AppColors.appSecondaryColor,
                          fontFamily: 'Poppins-Black',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins-Black',
                      fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Dont have an account? ',
                    ),
                    TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(color: AppColors.appSecondaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Get.to(signUp());
                          }),
                  ],
                ),
              ),
              12.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
