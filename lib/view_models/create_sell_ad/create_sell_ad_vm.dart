import 'package:get/get.dart';

class CreateSellAdViewModel extends GetxController {
  RxString selectedCategory = RxString("");
  List<String> categoryNames = [
    'Cow',
    'Buffalo',
    'Goat',
    'Sheep',
    'Camel',
    'Horse',
    'Hen'
  ];

  initializedSelectedCategory(String category) {
    if (category.isEmpty) {
      selectedCategory.value = '';
    } else {
      selectedCategory.value = category;
    }
  }
}
