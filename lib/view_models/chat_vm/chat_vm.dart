import 'package:get/get.dart';

import '../../services/routes_service/routes_name.dart';

class ChatViewModel extends GetxController {
  List<String> dummyName = [
    'Usama Hanif',
    'Yahya Khan',
    'Ammar Hanif',
  ];

  openMessages() {
    Get.toNamed(
      AppPages.messageScreenView,
    );
  }
}
