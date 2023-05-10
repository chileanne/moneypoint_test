import 'dart:io';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moneypoint/Screens/details_screens/cloth_detail_screeen.dart';
import 'package:moneypoint/Widgets/Shared_widgets/share_image_assets.dart';
import 'package:moneypoint/Widgets/Shared_widgets/shared_data_card.dart';

import '../../App_config/App_Styling/app_styling.dart';
import '../../App_config/App_color/app_color.dart';
import '../../Services/Controllers/homeControllers.dart';
import '../../Widgets/Shared_widgets/shared_Iconbuttons.dart';
import '../../Widgets/Shared_widgets/shared_icon.dart';
import '../../Widgets/Shared_widgets/shared_image_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.find();
  int index=0;
  final Screens=[
    HomeScreen(),
    Container(color: Colors.red,),
    Container(color: Colors.blue,),
    Container(color: Colors.green,),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.transparent,
            labelTextStyle: MaterialStateProperty.all(
             heading14,
            ),
        ),
        child: NavigationBar(
          backgroundColor: white,
          animationDuration: Duration(seconds: 3),
          selectedIndex: index,
          onDestinationSelected:(index)=>
              setState(() =>this.index=index),
          destinations: [
            NavigationDestination(
                icon: Image.asset(
                  "assets/icons/home.png",
                  fit: BoxFit.contain,
                  color: grey,
                  width: 30,
                  height: 30,
                ),
                selectedIcon:Image.asset(
                  "assets/icons/home.png",
                  fit: BoxFit.contain,
                  color: primary1,
                  width: 30,
                  height: 30,
                ) ,
                label: "Home",),
            NavigationDestination(
                icon: Image.asset(
                  "assets/icons/voucher.png",
                  fit: BoxFit.contain,
                  color: grey,
                  width: 30,
                  height: 30,
                ),
                selectedIcon: Image.asset(
                  "assets/icons/voucher.png",
                  fit: BoxFit.contain,
                  color: primary1,
                  width: 30,
                  height: 30,
                ),
                label: "Voucher"),



            NavigationDestination(
                icon:Image.asset(
                  "assets/icons/wallet.png",
                  fit: BoxFit.contain,
                  color: grey,
                  width: 30,
                  height: 30,
                ),
                selectedIcon:Image.asset(
                  "assets/icons/wallet.png",
                  fit: BoxFit.contain,
                  color: primary1,
                  width: 30,
                  height: 30,
                ),
                label: "Wallet"),


            NavigationDestination(
                icon: Image.asset(
                  "assets/icons/settings.png",
                  fit: BoxFit.contain,
                  color: grey,
                  width: 30,
                  height: 30,
                ),
                selectedIcon:Image.asset(
                  "assets/icons/settings.png",
                  fit: BoxFit.contain,
                  color: primary1,
                  width: 30,
                  height: 30,
                ),
                label: "Settings"),



          ],

        ),
      ),
      body: CustomScrollView(
        slivers: [

          ///app bar
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 220,
                  height: 40,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4.0),
                      prefixIcon: Icon(Icons.search, color: grey,),
                      hintText: 'Search',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: grey,
                              width: 2.0,
                              style: BorderStyle.solid)),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/icons/cart.png",
                          color: primary5,
                          height: Platform.isIOS?34:30,
                          width: Platform.isIOS?34:30,
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
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/icons/chat.png",
                          color: primary5,
                          height: Platform.isIOS?34:30,
                          width: Platform.isIOS?34:30,
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
            pinned: true,
            backgroundColor: white,
            expandedHeight: Platform.isIOS?400:400,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(
                    height: 320,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        appbarImage(
                          "assets/test/dd.png",
                        ),

                        appbarImage(
                          "assets/test/ddd.png",
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconCard("Category", "assets/icons/category.png"),
                        iconCard("Flight", "assets/icons/flight.png"),
                        iconCard("Bill", "assets/icons/dataplans.png"),
                        iconCard("Data Plan", "assets/icons/dataplans.png"),
                        iconCard("Top Up", "assets/icons/topup.png")
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best Sale Product",
                      style: heading5,),
                      Text("See more",
                        style: heading7,),

                    ],
                  ),
                )),
          ),





          ///Grid view list
          Obx(()=>SliverGrid(
              delegate: SliverChildBuilderDelegate((context,index){
                return GestureDetector(
                  onTap: (){
                    Get.to(()=>ClothDetailScreen(
                    image:homeController.itemList[index].image!,
                      name:homeController.itemList[index].name!,
                      brandName:homeController.itemList[index].brand!,
                      Xrating:homeController.itemList[index].xratings!,
                      nosold:homeController.itemList[index].noSold!,
                      review:homeController.itemList[index].review!,
                      price:homeController.itemList[index].price!,
                      ratings:homeController.itemList[index].ratings!,



                    ),
                    transition: Transition.downToUp);
                  },
                  child: SharedDataCard(
                    controller:homeController.itemList[index],
                    index: index,
                  ),
                );
                },
              childCount: homeController.itemList.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 4,
                childAspectRatio: Platform.isIOS?0.6:0.52




              ),
          )),
        ],
      ),
    );
  }

  ///app bar image card
  Widget appbarImage(String image) {
    return Image.asset(
      image,
      // height: height,
      //  width: 300,
      fit: BoxFit.cover,
    );
  }


  Widget iconCard(String title,String icon){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                color: primary3,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:  SharedImageAssets(image: icon, height: 22.0, width: 22.0,),
            )),
        const SizedBox(height: 6,),
        Text(title,style: heading13,)
      ],
    );
  }


  ///Image card
}
