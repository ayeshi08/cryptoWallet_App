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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}