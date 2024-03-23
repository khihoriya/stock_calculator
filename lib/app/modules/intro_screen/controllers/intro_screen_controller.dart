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
        title: "Your Stock Average Calculator",
        description: "it is use for effortlessly calculating stocks",
        image: "assets/images/image_1.jpg"));
    introScreenList.add(IntroScreenModel(
      title: "profit calculation",
      description: "user-friendly app designed to quickly calculate your investment profits.",
      image: "assets/images/image_2.jpg",
    ));
    introScreenList.add(IntroScreenModel(
        title: "multi stocks calculation",
        description: "calculating profits and loos across multiple stocks ",
        image: "assets/images/image.jpg"));
  }
}
