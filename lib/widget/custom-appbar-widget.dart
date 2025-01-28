import 'package:flutter/material.dart';

import '../styles/app-color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(automaticallyImplyLeading: false,
      backgroundColor: AppColors.appSecondaryColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight*0.5);
}
class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  SimpleAppBar();


  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
    backgroundColor: AppColors.appMainColor,);

  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight*0.5);
}



