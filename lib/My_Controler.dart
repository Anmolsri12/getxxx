import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;

  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying Books", "can not be less then zero",
          icon: Icon(Icons.alarm), barBlur: 20, isDismissible: true, duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }
    incrementpens() {
    pens.value++;
  }

  decrementpens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying pens", "can not be less then zero",
          icon: Icon(Icons.alarm), barBlur: 20, isDismissible: true, duration: Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
