import 'package:flutter/material.dart';
import 'package:get/get.dart';

void mydialoguebox() {
  Get.defaultDialog(
    title: "Getx Message",
    middleText: "I'm Added!",
    backgroundColor: Colors.cyan,
    titleStyle: TextStyle(color: Colors.white,),
    middleTextStyle: TextStyle(color: Colors.white,
      fontSize: 20
    ),
      onCancel: (){},
      onConfirm: (){},
    //actions: [
      //OutlinedButton(onPressed: (){Get.back();}, child:Text("Cancel")),
      //OutlinedButton(onPressed: (){Get.back();}, child:Text("Accept")),]
    cancel: ElevatedButton(
      onPressed: () {
        Get.back();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Background color
      ),
      child: Text(
        "Cancel",
        style: TextStyle(color: Colors.cyan), // Text color
      ),
    ),
    confirm: ElevatedButton(
      onPressed: () {
        Get.back();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Background color
      ),
      child: Text(
        "Confirm",
        style: TextStyle(color: Colors.cyan), // Text color
      ),
    ),
  );
}
