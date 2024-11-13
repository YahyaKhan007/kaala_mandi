import 'package:get/get.dart';
import 'package:kaala_mandi/data/app_images.dart';
import 'package:kaala_mandi/services/routes_service/routes_name.dart';

class HomeViewModel extends GetxController {
  List<String> categoryNames = [
    'Cow',
    'Buffalo',
    'Goat',
    'Sheep',
    'Camel',
    'Horse',
    'Hen'
  ];
  List<String> categoryIcons = [
    AppImages.cowIcon,
    AppImages.buffaloIcon,
    AppImages.goatIcon,
    AppImages.sheepIcon,
    AppImages.camelIcon,
    AppImages.horseICon,
    AppImages.henIcon
  ];

  gotoOfferDetails(String path) {
    Get.toNamed(AppPages.offerDetailsView, arguments: {"imagePath": path});
  }
}
