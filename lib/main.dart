
//import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/home-screen.dart';
import 'screen/splash-screen.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: true,  // Set to `true` to enable preview, `false` for normal run
    //   builder: (context) =>
    MyApp(),
   // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}



