
import 'package:flutter/material.dart';

import '../../App_config/App_color/app_color.dart';

class SharedIconButton extends StatelessWidget {
  final IconData icon;
  final Null Function() onPressed;
  final color;

  const SharedIconButton({Key? key,
    required this.icon,
    required this.onPressed,  this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
      color: color??grey,

    );
  }
}
