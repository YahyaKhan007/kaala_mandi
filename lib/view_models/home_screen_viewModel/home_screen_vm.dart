import 'package:get/get.dart';

class HomeScreenViewModel extends GetxController {
  RxInt currentScreenIndex = 0.obs;

  changeScreenIndex(value) {
    currentScreenIndex.value = value;
  }
}
