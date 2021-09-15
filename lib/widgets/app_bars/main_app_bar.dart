import 'package:flutter/material.dart';
import 'package:test_carshering/constants.dart';

import '../menu_dialog.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'МОИ ПОЕЗДКИ',
        style: kAppBarTextStyle,
      ),
      leading: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => MenuDialog(),
          );
        },
        child: Icon(
          Icons.filter_alt,
          color: Colors.white,
        ),
      ),
      actions: [
        Icon(Icons.close_outlined),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
