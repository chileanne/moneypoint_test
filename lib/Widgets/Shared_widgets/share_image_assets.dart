
import 'package:flutter/material.dart';

class SharedImageAssets extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  const SharedImageAssets({Key? key, required this.image,required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
            image,
          height: height,
          width: width,
      fit: BoxFit.cover,
        );
  }
}
