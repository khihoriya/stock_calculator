import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_calculator/app/model/intro_screen_model.dart';

class IntroScreenController extends GetxController {
  RxList<IntroScreenModel> introScreenList = <IntroScreenModel>[].obs;
  var pageController = PageController();
  var selectedPageIndex = 0.obs;

  @override
  void onInit() {
    getIntroScreenData();

    pageController.addListener(() {});
    super.onInit();
  }

  getIntroScreenData() {
    introScreenList.add(IntroScreenModel(
        title: "Discover Convenient Parking",
        description: "Explore nearby parking spaces with ease and find the perfect spot for your vehicle.",
        image: "assets/images/image_1.jpg"));
    introScreenList.add(IntroScreenModel(
      title: "Watchman Assistance",
      description: "Our app provides watchman assistance for added security and peace of mind.",
      image: "assets/images/image_2.jpg",
    ));
    introScreenList.add(IntroScreenModel(
        title: "Wallet Management",
        description: "Easily manage your wallet, add funds, and track transactions for quick payments",
        image: "assets/images/image.jpg"));
  }
}
