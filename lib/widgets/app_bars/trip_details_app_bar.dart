import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class TripDetailsAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'ДЕТАЛИ ПОЕЗДКИ',
        style: kAppBarTextStyle,
      ),
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
