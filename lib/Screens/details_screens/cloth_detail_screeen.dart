
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneypoint/App_config/App_Styling/app_styling.dart';

import '../../App_config/App_color/app_color.dart';
import '../../Widgets/Shared_widgets/shared_Iconbuttons.dart';
import '../../Widgets/Shared_widgets/shared_icon.dart';

class ClothDetailScreen extends StatefulWidget {
   ClothDetailScreen({Key? key}) : super(key: key);

  @override
  State<ClothDetailScreen> createState() => _ClothDetailScreenState();
}

class _ClothDetailScreenState extends State<ClothDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        ///leading back button to take the user back to previous screen
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              print("Eva Icon heart Pressed");
            }
        ),

        ///actions widget
        actions: [

          SharedIconButton(
            icon:EvaIcons.heart,
              onPressed: () {
                print("Eva Icon heart Pressed");
              },

          ),

          SharedIconButton(
              icon:Icons.share,
              onPressed: () {
                print("Eva Icon heart Pressed");
              }
          ),

          SharedIconButton(
              icon:EvaIcons.lock,
              onPressed: () {
                print("Eva Icon heart Pressed");
              },

          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 120,
        color: white,
        child: Padding(
          padding: const EdgeInsets.only(left:18.0,right: 10,top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///price tags
              Column(
                children: [
                  const SizedBox(height: 8,),
                  Text("Total Price",
                  style: heading2,),

                  const SizedBox(height: 8,),
                  Text("\$18.00",
                  style: heading1,),

                ],
              ),


              ///cart and buy now
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    color: primary2,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    )
                ),

                child: Row(
                  children: [
                    Container(
                      width:64,
                      height: 60,
                      decoration: BoxDecoration(
                        color: primary1,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)
                          )

                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SharedIconButton(
                              color:white,
                              icon: Icons.shopping_cart_outlined,
                              onPressed:(){
                              }),

                          Text("1",
                          style:heading3 ,),

                          const SizedBox(width: 4,)
                        ],
                      ),
                    ),
                    Container(
                      // width:30,
                      // height: 30,
                      decoration: BoxDecoration(
                        color: primary2,


                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("Buy Now",
                          textAlign: TextAlign.center,
                          style:heading3 ,),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:18.0,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 8,),

              ///Image Container
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: grey,
                  borderRadius: BorderRadius.circular(10.0)
                ),

                child: Stack(
                  children: [

                    ///Main image widget
                    Positioned.fill(
                        child:SizedBox(
                          width: double.infinity,
                          child: Image.asset("assets/test/shirtfour.jpeg",
                          fit: BoxFit.contain,

                         ),
                        ) ),



                    ///four image cards at the right handside
                    Positioned(
                        top: (size.width*0.1),
                        bottom: 0,
                        left: -(size.width*0.78),
                        right: 0,
                        child: Column(
                      children: [
                      smallContainer("assets/test/shirtfour.jpeg"),
                        smallContainer("assets/test/shirtfour.jpeg"),
                        smallContainer("assets/test/shirtfour.jpeg"),
                        smallContainer("assets/test/shirtfour.jpeg"),
                      ],
                    ))
                  ],
                ),
              ),

              const SizedBox(height: 20,),
              ///header widgets
              Row(
                children: [
                SharedIcons(icon: EvaIcons.archive, color: grey),
                  Text("anthony.bd",
                  style: heading4,),
                ],
              ),

              const SizedBox(height: 10,),

              Text("Essential Men's Short - Sleeve\nCrewneck T-Shirt",
              style: heading5,),

              const SizedBox(height: 20,),
              ///Ratings,review,and no_sold widgets
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 128,
                    child:Row(
                        children:[
                          SharedIcons(
                            icon:EvaIcons.star,
                            color:orange
                          ),
                          const SizedBox(width: 10,),
                      Text("4.9 Ratings",
                        style: heading6,),
                    ]),
                  ),

                  const SizedBox(width: 20,),

                  Text("* 2.3 + Reviews",
                    style: heading6,),

                  const SizedBox(width: 20,),
                  Text("* 2.9 + Sold",
                    style: heading6,),

                  const SizedBox(width: 10,),

                ],
              ),


              const SizedBox(height: 20,),

              ///About item and Review tab
              Container(
                height: 50,
                child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Row(

                            children: [
                              Text("About Item",
                                style: heading7,),


                              const SizedBox(width: 64,),

                              Text("Review",
                                style: heading6,),
                            ],
                          ),
                        ),

                        const SizedBox(height: 6,),

                        Row(
                          children:   [
                           SizedBox(
                              width: 180,
                              child: Divider(
                                color: primary1,
                                // height: 8,
                                thickness: 2,),
                            ),

                            Expanded(
                              child: Divider(
                                color: grey,
                                // height: 8,
                                thickness: 2,),
                            )
                          ],
                        )







                      ],
                    ),),


              ///About item sub card==> when a user taps on About item
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          aboutSubCard("Brand:", "Aba Made"),
                          aboutSubCard("Color:", "Aprikot")

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          aboutSubCard("Category:", "T-Shirt"),
                          aboutSubCard("Material:", "Silk"),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          aboutSubCard("Condition:", "New"),
                          aboutSubCard("Heavy:", "200g")

                        ],
                      ),
                    ),
                  ],
                ),
              ),







            ],
          ),
        ),
      ),
    );
  }
  
  
  
  
  ///small container widget
///to display images 

Widget smallContainer(String s){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: grey,
          //  borderRadius: BorderRadius.circular(10.0)
        ),

        child: Image.asset(s,fit: BoxFit.contain,),
      ),
    );
}




///About item and Review tab sub card widgets
Widget aboutSubCard(String title, String subtitle){
    return   Row(
      children: [
        Text(title,
          style: heading6,),

        const SizedBox(width: 8,),

        Text(subtitle,
          style: heading8,),


      ],
    );
}
}
