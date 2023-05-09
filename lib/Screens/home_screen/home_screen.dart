
import 'package:flutter/material.dart';
import 'package:moneypoint/Widgets/Shared_widgets/share_image_assets.dart';

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
            expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                    //appbarImage( "assets/test/onen.png",),
                     appbarImage( "assets/test/one.jpeg",),
                    appbarImage( "assets/test/two.jpeg",),
                    appbarImage( "assets/test/three.jpeg",),
                    appbarImage( "assets/test/four.jpeg",),
              ],
            )

            // ListView(
            //   scrollDirection: Axis.horizontal,
            //
            //   children: [
            //     appbarImage( "assets/test/onen.png",),
            //     // appbarImage( "assets/test/one.jpeg",),
            //     appbarImage( "assets/test/two.jpeg",),
            //     appbarImage( "assets/test/three.jpeg",),
            //     appbarImage( "assets/test/four.jpeg",),
            //
            //
            //   ],
            // ),

          ),
          )
        ],
      ),
    );
  }


  ///app bar image card
 Widget appbarImage(String image){
    return   Image.asset(
      image,
     // color: Colors.red,
      // height: height,
     //  width: 300,
      fit: BoxFit.cover,
    );
 }
}
