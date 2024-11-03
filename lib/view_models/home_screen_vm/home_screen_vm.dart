import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/views/home_screen_views/chat_view/chat_view.dart';
import 'package:kaala_mandi/views/home_screen_views/home_view/home_view.dart';
import 'package:kaala_mandi/views/home_screen_views/more_view/more_view.dart';
import 'package:kaala_mandi/views/home_screen_views/my_ads_view/my_ads_view.dart';

class HomeScreenViewModel extends GetxController {
  RxInt currentScreenIndex = 0.obs;

  final List<Widget> homeScreenPages = [
    HomeView(),
    MyAdsView(),
    ChatView(),
    MoreView()
  ];

  changeScreenIndex(value) {
    currentScreenIndex.value = value;
  }
}
