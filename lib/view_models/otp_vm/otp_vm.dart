import 'package:get/get.dart';
import 'package:kaala_mandi/services/routes_service/routes_name.dart';

class OTpViewModel extends GetxController {
  onSubmittedField(int value) {
    print("Entered Value is : $value");
    Get.offAllNamed(AppPages.homeScreenView);
  }
}
