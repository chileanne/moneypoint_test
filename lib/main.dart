import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moneypoint/Screens/details_screens/cloth_detail_screeen.dart';

import 'Services/Controllers/appbindings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();




  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
       initialBinding: AppBinding(),
        home: ClothDetailScreen(),
        //home: HomeScreen(tra:Tradao),
      ));
}



