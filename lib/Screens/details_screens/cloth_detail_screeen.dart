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
import '../../Widgets/Shared_widgets/shared_icon.dart';

class ClothDetailScreen extends StatefulWidget {
  ClothDetailScreen({Key? key}) : super(key: key);

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
        ///leading back button to take the user back to previous screen
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              print("Eva Icon heart Pressed");
            }),

        ///actions widget
        actions: [
          SharedIconButton(
            icon: EvaIcons.heart,
            onPressed: () {
              print("Eva Icon heart Pressed");
            },
          ),
          SharedIconButton(
              icon: Icons.share,
              onPressed: () {
                print("Eva Icon heart Pressed");
              }),
          SharedIconButton(
            icon: EvaIcons.lock,
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
                    "\$18.00",
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
                      width: 64,
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
                            width: 4,
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
                    color: grey, borderRadius: BorderRadius.circular(10.0)),
                child: Stack(
                  children: [
                    ///Main image widget
                    Positioned.fill(
                        child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/test/shirtfour.jpeg",
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
                                "assets/test/shirtfour.jpeg", 40.0, 40.0),
                            smallContainer(
                                "assets/test/shirtfour.jpeg", 40.0, 40.0),
                            smallContainer(
                                "assets/test/shirtfour.jpeg", 40.0, 40.0),
                            smallContainer(
                                "assets/test/shirtfour.jpeg", 40.0, 40.0),
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
                  SharedIcons(icon: EvaIcons.archive, color: grey),
                  Text(
                    "anthony.bd",
                    style: heading4,
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                "Essential Men's Short - Sleeve\nCrewneck T-Shirt",
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
                    width: 128,
                    child: Row(children: [
                      SharedIcons(icon: EvaIcons.star, color: orange),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "4.9 Ratings",
                        style: heading6,
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "* 2.3 + Reviews",
                    style: heading6,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "* 2.9 + Sold",
                    style: heading6,
                  ),
                  const SizedBox(
                    width: 10,
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

              Column(
                children: [
                  descriptionSubCard("Durable and Combination Cotton Fabric."),
                  descriptionSubCard("Comfortable and quality Tshirt."),
                  descriptionSubCard("Patch pocket on the left side."),
                  descriptionSubCard("Go to classic shirt ."),
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
                        onTap: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "See Less",
                              style: heading7,
                            ),
                            SharedIcons(
                                icon: EvaIcons.arrowIosUpwardOutline,
                                color: grey)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

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
                      color: grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 10),
                      child: Text(
                        "Thrifting\nStore",
                        style: heading8,
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
                        "About 5mins ago | 96.7% positive Feedback",
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
                        "2.3 + Reviews",
                        style: heading4,
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Expanded(
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
                              width: 150,
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
                            SizedBox(width: 8),
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
                              width: 150,
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
                            const SizedBox(width: 8),
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
                              width: 150,
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
                            SizedBox(width: 8),
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
                              width: 150,
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
                            const SizedBox(width: 8),
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
                              width: 150,
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
                            const SizedBox(width: 8),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  smallContainerx("assets/test/shirtfour.jpeg", 80.0, 80.0),
                  smallContainerx("assets/test/shirtfour.jpeg", 80.0, 80.0),
                  smallContainerx("assets/test/shirtfour.jpeg", 80.0, 80.0),
                  smallContainerx("assets/test/shirtfour.jpeg", 80.0, 80.0),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              ///top reviews
              Text(
                "Top Reviews",
                style: heading8,
              ),

              const SizedBox(
                height: 12,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Showing 3 of 2.5k + Reviews",
                    style: heading9,
                  ),
                  Obx(() => SizedBox(
                        height: 54,
                        width: 120,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color:grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: grey, width: 2),
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
  Widget descriptionSubCard(String desc) {
    return Row(
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
    );
  }
}
