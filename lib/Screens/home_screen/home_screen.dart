import 'package:flutter/material.dart';
import 'package:moneypoint/Widgets/Shared_widgets/share_image_assets.dart';

import '../../App_config/App_Styling/app_styling.dart';
import '../../App_config/App_color/app_color.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          SliverToBoxAdapter(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In finibus, lorem quis consequat fermentum, erat purus placerat eros, eu consequat enim velit id nulla. Duis dui purus, tincidunt non augue at, ultricies efficitur tellus. Nulla fermentum mi non dui facilisis vestibulum. Nam ipsum dui, sodales quis sagittis vel, tempus sit amet dui. Etiam sodales varius est eu auctor. Nunc varius dolor sit amet consequat gravida. Donec maximus leo porttitor tellus lobortis, blandit pellentesque nulla auctor. Cras lectus ipsum, euismod sed magna in, blandit rutrum neque. Fusce finibus, leo sit amet pellentesque auctor, quam orci ornare libero, et laoreet augue elit sed lectus. Praesent ultricies justo egestas, rutrum ante et, suscipit ex",
              style: TextStyle(fontSize: 29),
            ),
          )
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
}
