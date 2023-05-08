
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/colors.dart';

class SharedIcons extends StatelessWidget {
  final IconData icon;
  final MaterialColor color;

  const SharedIcons({Key? key, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Icon(icon,color: color,);
  }
}
