

import 'package:flutter/material.dart';

import '../../App_config/App_color/app_color.dart';

class SharedImageButton extends StatelessWidget {
  final String icon;
  final Null Function() onTap;
 SharedImageButton({Key? key,required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
        child: Image.asset(icon,
          color: black,
          height: 25,
            width: 25,
        )

    );
  }
}
