
//import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:crypto_wallet_app/all_bindings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'screen/home_screen.dart';
import 'screen/splash_screen.dart';

void main() async{

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
    runApp(MyApp(),
   // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

    designSize: Size (360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>
      GetMaterialApp(
        initialBinding: AllBindings(),
        
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    ) );
  }
}



