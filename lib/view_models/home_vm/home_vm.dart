import 'package:get/get.dart';
import 'package:kaala_mandi/data/app_images.dart';
import 'package:kaala_mandi/views/home_screen_views/home_view/sub_pages/offer_detail_view/offer_detail_view.dart';

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
    Get.to(() => OfferDetailView(
          imagePath: path,
        ));
  }
}
