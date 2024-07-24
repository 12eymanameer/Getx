import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mydialoguebox.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Mysnackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Getx Example',
            style: GoogleFonts.cabin(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          backgroundColor: Colors.cyan,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size:35
              ), // Cart icon
              onPressed: () {
                mysncakbar1();
              },
            ),
          ],
        ),
        body: ListColor(),
      ),
    );
  }
}

class ListColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          mydialoguebox();
        },
        child: Text(
          'ADD',
          style: TextStyle(
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
