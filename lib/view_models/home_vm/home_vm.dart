import 'package:get/get.dart';
import 'package:kaala_mandi/data/app_images.dart';

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
}
