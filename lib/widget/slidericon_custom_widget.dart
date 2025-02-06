import 'package:crypto_wallet_app/styles/app_color.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({super.key ,
     this.child,
    this.width= 400,
    this.height= 400,
    this.radius= 400,
    this.padding= 0,
    this.margin ,
    this.backgroundColor =AppColors.appSecondaryColor ,
  });

final double? width;
  final double? height;
  final double radius;
  final double? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width:width ,

      height:height ,
      margin: margin,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(color: backgroundColor,
        borderRadius: BorderRadius.circular(radius)
      ),
      child: child,
    );
  }

}
