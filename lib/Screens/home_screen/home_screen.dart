
import 'package:flutter/material.dart';
import 'package:moneypoint/Widgets/Shared_widgets/share_image_assets.dart';

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
            pinned: true,
            backgroundColor: white,

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
            ),





          ),
          ),
          SliverToBoxAdapter(
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In finibus, lorem quis consequat fermentum, erat purus placerat eros, eu consequat enim velit id nulla. Duis dui purus, tincidunt non augue at, ultricies efficitur tellus. Nulla fermentum mi non dui facilisis vestibulum. Nam ipsum dui, sodales quis sagittis vel, tempus sit amet dui. Etiam sodales varius est eu auctor. Nunc varius dolor sit amet consequat gravida. Donec maximus leo porttitor tellus lobortis, blandit pellentesque nulla auctor. Cras lectus ipsum, euismod sed magna in, blandit rutrum neque. Fusce finibus, leo sit amet pellentesque auctor, quam orci ornare libero, et laoreet augue elit sed lectus. Praesent ultricies justo egestas, rutrum ante et, suscipit ex",
            style: TextStyle(
              fontSize: 29
            ),),
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
