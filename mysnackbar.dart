import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'HomePage.dart';

void mysncakbar1(){
  Get.snackbar('Getx Message','Im Getx',
      colorText: Colors.cyan,
      //borderColor: Colors.cyan,
      backgroundColor: Colors.white,
      icon: Icon(Icons.notifications_outlined,
        color: Colors.cyan,),
      dismissDirection: DismissDirection.down,
      mainButton:TextButton(  onPressed: () {
        Get.to(() => Homepage());
      },

        child: Text('Im pressed *_*',
          style: TextStyle(
              color: Colors.cyan
          ),),

      )
  );
}