



import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:moneypoint/Services/Controllers/homeControllers.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());

  }

}