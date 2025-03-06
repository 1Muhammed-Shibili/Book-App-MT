import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Questions Page")),
    Center(child: Text("Community Page")),
    Center(child: Text("Purchases Page")),
    Center(child: Text("Me Page")),
  ];
}
