

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:moneypoint/Services/models/item_models.dart';
import 'package:moneypoint/Widgets/Shared_widgets/shared_Iconbuttons.dart';
import 'package:moneypoint/Widgets/Shared_widgets/shared_image_button.dart';

import '../../App_config/App_Styling/app_styling.dart';
import '../../App_config/App_color/app_color.dart';

class SharedDataCard extends StatelessWidget {
  final Tshirt controller;
  final int index;

 SharedDataCard({Key? key, required this.controller,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: double.infinity,
        height: 400,
        child: Column(
          children: [

            ///image card
            Container(
              color:primary3,
              height:180 ,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(child: Image.asset(controller.image!,fit: BoxFit.contain,)),

                  Positioned(
                      right: 9,
                      child:
                      index==1?
                      SharedIconButton(
                        color: Colors.red,
                        icon: EvaIcons.heart,
                        onPressed: () {

                        },
                      ):SharedImageButton(
                          icon: "assets/icons/heart.png",
                          onTap: () {

                          }))
                ],


              ),
            ),

            SizedBox(height: 8,),

            ///header category
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:8.0,top:4.0),
                child: Text("Shirt",
                  style: heading4,),
              ),
            ),


            ///title
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller.name!,
                  style: heading16,
                ),
              ),
            ),


            ///
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,color: orange,size: 18.0,),
                      const SizedBox(width: 2,),
                      Text(
                        controller.ratings!,
                        style: heading15,
                      ),
                    ],
                  ),
                  Text(
                    controller.price!,
                    style: heading1,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
