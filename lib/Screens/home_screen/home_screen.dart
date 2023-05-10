import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:moneypoint/Screens/details_screens/cloth_detail_screeen.dart';
import 'package:moneypoint/Widgets/Shared_widgets/share_image_assets.dart';

import '../../App_config/App_Styling/app_styling.dart';
import '../../App_config/App_color/app_color.dart';
import '../../Services/Controllers/homeControllers.dart';
import '../../Widgets/Shared_widgets/shared_icon.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [

          ///app bar
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 260,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: grey, size: 24.0),
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
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/icons/cart.png",
                          color: primary5,
                          height: 34,
                          width: 34,
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
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/icons/cart.png",
                          color: primary5,
                          height: 34,
                          width: 34,
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
            expandedHeight: 360,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(
                    height: 320,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //appbarImage( "assets/test/onen.png",),
                        // appbarImage(
                        //   "assets/test/one.jpeg",
                        // ),
                        // appbarImage(
                        //   "assets/test/two.jpeg",
                        // ),
                        // appbarImage(
                        //   "assets/test/three.jpeg",
                        // ),
                        // appbarImage(
                        //   "assets/test/four.jpeg",
                        // ),

                        appbarImage(
                          "assets/test/fabx.jpeg",
                        ),


                        appbarImage(
                          "assets/test/fab.jpeg",
                        ),


                        appbarImage(
                          "assets/test/fabc.jpeg",
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
          ),
          const SliverToBoxAdapter(
            child: Text(
              "Lorem-ipsum dolor sit amet, consectetur adipiscing elit. In finibu",
              style: TextStyle(fontSize: 22),
            ),
          ),


          ///Grid view list
          SliverGrid(
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



                    ));
                  },
                  child: Card(
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
                            child: Image.asset(homeController.itemList[index].image!,),
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
                                homeController.itemList[index].name!,
                                style: heading5,
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
                                      homeController.itemList[index].ratings!,
                                      style: heading4,
                                    ),
                                  ],
                                ),
                                Text(
                                  homeController.itemList[index].price!,
                                  style: heading1,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );

                //   Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Card(
                //   elevation: 2.0,
                //    child: Column(
                //      children: [
                //        ///image card
                //        Container(
                //          height:120,
                //          decoration: BoxDecoration(
                //            borderRadius: BorderRadius.circular(10.0),
                //            color: primary3,
                //            // image: DecorationImage(
                //            //   image: AssetImage("assets/test/shirtfour.png")
                //            // )
                //          ),
                //
                //        )
                //      ],
                //    ),
                //   ),
                // );
              },
              childCount: homeController.itemList.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 4,
                childAspectRatio: 0.6




              ),
          ),
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
      children: [
        Container(
            decoration: BoxDecoration(
                color: primary3,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:  SharedImageAssets(image: icon, height: 24.0, width: 24.0,),
            )),
        const SizedBox(height: 6,),
        Text(title,style: heading4,)
      ],
    );
  }


  ///Image card
}
