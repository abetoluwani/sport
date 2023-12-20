import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenBinding extends Bindings {
  @override
  void dependencies() {
    // use Get.put
    Get.put<SplashscreenController>(
  SplashscreenController(),
);
 
    
  }
}
