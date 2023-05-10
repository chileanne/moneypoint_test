import 'dart:io';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneypoint/App_config/App_Styling/app_styling.dart';
import 'package:moneypoint/Services/Controllers/homeControllers.dart';

import '../../App_config/App_color/app_color.dart';
import '../../Widgets/Shared_widgets/shared_Iconbuttons.dart';
import '../../Widgets/Shared_widgets/shared_data_card.dart';
import '../../Widgets/Shared_widgets/shared_icon.dart';
import '../../Widgets/Shared_widgets/shared_image_button.dart';

class ClothDetailScreen extends StatefulWidget {
  final String image;
  final String name;
  final String brandName;
  final String Xrating;
  final String nosold;
  final String review;
  final String price;
  final String ratings;

  ClothDetailScreen({Key? key,
    required this.image,
    required this.name,
    required this.brandName,
    required this.Xrating,
    required this.nosold,
    required this.review,
  required this.price,
  required this.ratings}) : super(key: key);

  @override
  State<ClothDetailScreen> createState() => _ClothDetailScreenState();
}

class _ClothDetailScreenState extends State<ClothDetailScreen> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,

        ///leading back button to take the user back to previous screen
        leading: IconButton(
            color: black,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            }),

        ///actions widget
        actions: [
          Obx(() => homeController.selectedLove.value.isEmpty
              ? SharedImageButton(
                  icon: "assets/icons/heart.png",
                  onTap: () {
                    homeController.selectedLove.value = "1";
                  })
              : SharedIconButton(
                  color: Colors.red,
                  icon: EvaIcons.heart,
                  onPressed: () {
                    print("Eva Icon heart Pressed");
                    homeController.selectedLove.value = "";
                  },
                )),

          SharedImageButton(icon: "assets/icons/share.png", onTap: () {}),

          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right: 8.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/cart.png",
                    color: black,
                    height: 28,
                    width: 28,
                  ),
                ),
                Positioned(
                    top: 4,
                   // bottom: 0,
                    left: 20,
                    //right: 0,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                          color: primary4,
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Center(
                        child: Text(
                          "1",
                          style: heading12,
                        ),
                      ),
                    ))
              ],
            ),
          )


        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: white,
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 10, top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///price tags
              Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Total Price",
                    style: heading2,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.price,
                    style: heading1,
                  ),
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
                    )),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                          color: primary1,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SharedIconButton(
                              color: white,
                              icon: Icons.shopping_cart_outlined,
                              onPressed: () {}),
                          Text(
                            "1",
                            style: heading3,
                          ),
                          const SizedBox(
                            width: 10,
                          )
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
                        child: Text(
                          "Buy Now",
                          textAlign: TextAlign.center,
                          style: heading3,
                        ),
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
          padding: const EdgeInsets.only(left: 18.0, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),

              ///Image Container
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary3, borderRadius: BorderRadius.circular(10.0)),
                child: Stack(
                  children: [
                    ///Main image widget
                    Positioned.fill(
                        child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        widget.image,
                        fit: BoxFit.contain,
                      ),
                    )),

                    ///four image cards at the right handside
                    Positioned(
                        top: (size.width * 0.1),
                        bottom: 0,
                        left: -(size.width * 0.78),
                        right: 0,
                        child: Column(
                          children: [
                            smallContainer(
                                widget.image, 40.0, 40.0),
                            smallContainer(
                                widget.image, 40.0, 40.0),
                            smallContainer(
                                widget.image, 40.0, 40.0),
                            smallContainer(
                                widget.image, 40.0, 40.0),
                          ],
                        ))
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              ///header widgets
              Row(
                children: [
                  Icon(EvaIcons.archive,color: grey,size: 16,),
                //  SharedIcons(icon: EvaIcons.archive, color: grey),
                  Text(
                    widget.brandName,
                    style: heading13,
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                widget.name,
                style: heading5,
              ),

              const SizedBox(
                height: 20,
              ),

              ///Ratings,review,and no_sold widgets
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Platform.isIOS?128:110,
                    child: Row(children: [
                      SharedIcons(icon: EvaIcons.star, color: orange),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.ratings,
                        style: heading6,
                      ),
                    ]),
                  ),
                   SizedBox(
                    width: Platform.isIOS?20:10,
                  ),
                  Text(
                    "* ${widget.review}",
                    style: heading6,
                  ),
                  SizedBox(
                    width: Platform.isIOS?20:10,
                  ),
                  Text(
                    "* ${widget.nosold}",
                    style: heading6,
                  ),
                  SizedBox(
                    width: Platform.isIOS?10:0,
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              ///About item and Review tab
              Container(
                height: 50,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Text(
                            "About Item",
                            style: heading7,
                          ),
                          const SizedBox(
                            width: 64,
                          ),
                          Text(
                            "Review",
                            style: heading6,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                          child: Divider(
                            color: primary1,
                            // height: 8,
                            thickness: 2,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: grey,
                            // height: 8,
                            thickness: 2,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

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

              const SizedBox(
                height: 14,
              ),

              Divider(
                color: grey,
                thickness: 1,
              ),
              const SizedBox(
                height: 14,
              ),

              ///Description
              Text(
                "Description",
                style: heading8,
              ),

              const SizedBox(
                height: 14,
              ),


              Obx(()=>Column(
                children: [
                  descriptionSubCard("Durable and Combination Cotton Fabric.",false),
                  descriptionSubCard("Comfortable and quality Tshirt.",homeController.seeless.value),
                  descriptionSubCard("Patch pocket on the left side.",homeController.seeless.value),
                  descriptionSubCard("Go to classic shirt .",homeController.seeless.value),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Chat us if there is anything you need to know about the product",
                      style: heading4,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                        if(homeController.seeless.isTrue){
                          homeController.seeless.value=false;
                        }else{
                          homeController.seeless.value=true;
                        }
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            homeController.seeless.isFalse?
                            Text(
                              "See Less",
                              style: heading7,
                            ): Text(
                              "See More",
                              style: heading7,
                            ),
                            // SharedIcons(
                            //     icon: EvaIcons.arrowIosUpwardOutline,
                            //     color: grey)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),

              const SizedBox(
                height: 14,
              ),

              Divider(
                color: grey,
                thickness: 1,
              ),
              const SizedBox(
                height: 18,
              ),

              ///shipping information
              Text(
                "Shipping Information",
                style: heading8,
              ),

              const SizedBox(
                height: 12,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: aboutSubCard("Delivery:", "Shipping from Aba, Nigeria"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: aboutSubCard("Shipping:", "Shipping cost \$100"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: aboutSubCard(
                    "Active:", "Estimate arrival on 25-27 oct 2022"),
              ),

              const SizedBox(
                height: 20,
              ),

              ///seller information
              Text(
                "Seller Information",
                style: heading8,
              ),

              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primary3,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2.0, left: 8),
                      child: Center(
                        child: Text(
                          "Thrifting\nStore",
                          style: heading8,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thrifting_Store",
                        style: heading8,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "About 5mins ago | 96.7% Feedback",
                        style: heading9,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: white,
                            border: Border.all(
                              color: primary1,
                              width: 2.0,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SharedIcons(
                              color: primary1,
                              icon: Icons.shopping_cart_outlined,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "View Store",
                              style: heading7,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              Divider(
                color: grey,
                thickness: 1,
              ),

              const SizedBox(
                height: 20,
              ),

              ///Ratings and Reviews
              Text(
                "Reviews and Ratings",
                style: heading8,
              ),

              const SizedBox(
                height: 14,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "4.9",
                            style: heading10,
                          ),
                          Text(
                            "/5.0",
                            style: heading4,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SharedIcons(icon: Icons.star, color: orange),
                          SharedIcons(icon: Icons.star, color: orange),
                          SharedIcons(icon: Icons.star, color: orange),
                          SharedIcons(icon: Icons.star, color: orange),
                          const SharedIcons(
                              icon: Icons.star, color: Colors.transparent),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        widget.review,
                        style: heading4,
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    width: Platform.isIOS?240:200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SharedIcons(icon: Icons.star, color: orange),
                            const SizedBox(width: 8),
                            Text(
                              "5",
                              style: heading4,
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: Platform.isIOS?150:114,
                              child: Stack(
                                children: [
                                  Divider(
                                    thickness: 8,
                                    color: grey,
                                  ),
                                  SizedBox(
                                      width: 130,
                                      child: Divider(
                                        thickness: 8,
                                        color: primary1,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(width: Platform.isIOS?8:4),
                            Text(
                              "1.3k",
                              style: heading8,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SharedIcons(icon: Icons.star, color: orange),
                            const SizedBox(width: 8),
                            Text(
                              "4",
                              style: heading4,
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: Platform.isIOS?150:114,
                              child: Stack(
                                children: [
                                  Divider(
                                    thickness: 8,
                                    color: grey,
                                  ),
                                  SizedBox(
                                      width: 80,
                                      child: Divider(
                                        thickness: 8,
                                        color: primary1,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(width: Platform.isIOS?8:4),
                            Text(
                              "710",
                              style: heading8,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SharedIcons(icon: Icons.star, color: orange),
                            const SizedBox(width: 8),
                            Text(
                              "3",
                              style: heading4,
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: Platform.isIOS?150:114,
                              child: Stack(
                                children: [
                                  Divider(
                                    thickness: 8,
                                    color: grey,
                                  ),
                                  SizedBox(
                                      width: 24,
                                      child: Divider(
                                        thickness: 8,
                                        color: primary1,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(width: Platform.isIOS?8:4),
                            Text(
                              "140",
                              style: heading8,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SharedIcons(icon: Icons.star, color: orange),
                            const SizedBox(width: 8),
                            Text(
                              "2",
                              style: heading4,
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: Platform.isIOS?150:114,
                              child: Stack(
                                children: [
                                  Divider(
                                    thickness: 8,
                                    color: grey,
                                  ),
                                  SizedBox(
                                      width: 10,
                                      child: Divider(
                                        thickness: 8,
                                        color: primary1,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(width: Platform.isIOS?2:4),
                            Text(
                              "10",
                              style: heading8,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SharedIcons(icon: Icons.star, color: orange),
                            const SizedBox(width: 8),
                            Text(
                              "1",
                              style: heading4,
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: Platform.isIOS?150:114,
                              child: Stack(
                                children: [
                                  Divider(
                                    thickness: 8,
                                    color: grey,
                                  ),
                                  SizedBox(
                                      width: 4,
                                      child: Divider(
                                        thickness: 8,
                                        color: primary1,
                                      )),
                                ],
                              ),
                            ),
                      SizedBox(width: Platform.isIOS?8:4),
                            Text(
                              "4",
                              style: heading8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              ///Reviews with images
              Text(
                "Reviews with images & videos",
                style: heading8,
              ),

              const SizedBox(
                height: 14,
              ),



              SizedBox(
                width: 400,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    smallContainerx(widget.image, 80.0, 80.0),
                    smallContainerx(widget.image, 80.0, 80.0),
                    smallContainerx(widget.image, 80.0, 80.0),
                    smallContainerx(widget.image, 80.0, 80.0),
                  ],
                ),
              ),

              // Row(
              //  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     smallContainerx(widget.image, 80.0, 80.0),
              //     smallContainerx(widget.image, 80.0, 80.0),
              //     smallContainerx(widget.image, 80.0, 80.0),
              //     smallContainerx(widget.image, 80.0, 80.0),
              //   ],
              // ),

              const SizedBox(
                height: 20,
              ),

              ///top reviews
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///top reviews
                      Text(
                        "Top Reviews",
                        style: heading8,
                      ),

                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Showing 3 of 2.5k + Reviews",
                        style: heading9,
                      ),
                    ],
                  ),
                  Obx(() => SizedBox(
                        height: 54,
                        width: 120,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),

                              filled: true,
                              // fillColor: Colors.blueAccent,
                            ),
                            dropdownColor: white,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: black,
                            ),
                            elevation: 1,
                            // isExpanded: true,
                            value: homeController.selectedDropdownValue.value,
                            onChanged: (String? newValue) {
                              setState(() {
                                homeController.selectedDropdownValue.value =
                                    newValue!;
                              });
                            },
                            items: dropdownItems),
                      ))
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              ///users Rating
              ///
              ///User one
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/test/obi.jpg"),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "Emem y*****y",
                        style: heading8,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SharedIcons(icon: Icons.star, color: orange),
                      const SizedBox(width: 2),
                      Text(
                        "5.0",
                        style: heading8,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        ". . .",
                        style: heading4,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),


             SizedBox(
               width: 400,
               height: 50,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                  children: [
                    reviewSubCard("Positive Review"),
                    reviewSubCard("Negative Review"),
                    reviewSubCard("Critical Review"),
                  ],
                ),
             ),

              const SizedBox(
                height: 14,
              ),

              Text(
                "According to my expectation this the best\nthank you",
                style: heading11,
              ),

              const SizedBox(
                height: 8,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SharedIcons(
                          icon: Icons.thumb_up_off_alt_rounded,
                          color: primary1),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Helpful ?",
                        style: heading7,
                      ),
                    ],
                  ),
                  Text(
                    "Yesterday",
                    style: heading9,
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              ///end

              ///user two
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/test/obi.jpg"),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "Emem y*****y",
                        style: heading8,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SharedIcons(icon: Icons.star, color: orange),
                      const SizedBox(width: 2),
                      Text(
                        "3.0",
                        style: heading8,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        ". . .",
                        style: heading4,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    reviewSubCard("Positive Review"),
                    reviewSubCard("Negative Review"),
                    reviewSubCard("Critical Review"),
                  ],
                ),
              ),

              const SizedBox(
                height: 14,
              ),

              Text(
                "i am satisfied witht the time of delivery\nthank you",
                style: heading11,
              ),

              const SizedBox(
                height: 8,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SharedIcons(
                          icon: Icons.thumb_up_off_alt_rounded,
                          color: primary1),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Helpful ?",
                        style: heading7,
                      ),
                    ],
                  ),
                  Text(
                    "Yesterday",
                    style: heading9,
                  ),
                ],
              ),

              ///end

              const SizedBox(
                height: 30,
              ),

              ///see more
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "<  1  2  3  ...  >",
                    style: heading11,
                  ),
                  Text(
                    "See more",
                    style: heading7,
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),


              ///Recomendations
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Sale Product",
                    style: heading5,),
                  Text("See more",
                    style: heading7,),

                ],
              ),

              const SizedBox(
                height: 30,
              ),


            SizedBox(
              height: 350,
              width: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width:200,
                    height: 240,
                    child: SharedDataCard(
                      controller:homeController.itemList[0],
                      index: 0,
                    ),
                  ),
                  SizedBox(
                    width:200,
                    height: 240,
                    child: SharedDataCard(
                      controller:homeController.itemList[1],
                      index: 1,
                    ),
                  )
                ],
              ),
            )



            ],
          ),
        ),
      ),
    );
  }

  ///small container widget
  ///to display images

  Widget smallContainer(String s, double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: grey,
          //borderRadius: BorderRadius.circular(10.0)
        ),
        child: Image.asset(
          s,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  ///review with images
  /// image cards

  Widget smallContainerx(String s, double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Image.asset(
          s,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  ///drop down
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Popular"), value: "0"),
      DropdownMenuItem(child: Text("Issues"), value: "1"),
    ];
    return menuItems;
  }

  ///About item and Review tab sub card widgets
  Widget aboutSubCard(String title, String subtitle) {
    return Row(
      children: [
        Text(
          title,
          style: heading4,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          subtitle,
          style: heading8,
        ),
      ],
    );
  }

  ///description card widgets
  Widget descriptionSubCard(String desc, bool value) {
    return Visibility(
      visible: value==false,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SharedIcons(
              icon: Icons.star,
              color: grey,
            ),
          ),
          Text(
            desc,
            style: heading4,
          ),
        ],
      ),
    );
  }

  ///types of reviews card
  Widget reviewSubCard(String desc) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: primary1,
            ),
            borderRadius: BorderRadius.circular(12.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(desc, style: heading7),
        ),
      ),
    );
  }
}
