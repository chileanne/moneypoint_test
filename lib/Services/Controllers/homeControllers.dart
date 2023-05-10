

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moneypoint/Services/models/item_models.dart';

class HomeController extends GetxController{

  var selectedDropdownValue ="0".obs;
  var seeless=true.obs;
  var selectedLove="".obs;
  var itemList=<Tshirt>[].obs;





  ///read json
  Future<void> readjson() async{
    final String response = await rootBundle.loadString("assets/data.json");
    var tShirt= itemsfromJson(response);
      itemList.value= tShirt.tshirt!;
     print(itemList.length);
  }



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    ///read json
    readjson();
  }


}