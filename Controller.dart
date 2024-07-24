
import 'package:get/get.dart';

class Controller extends GetxController{

  RxInt count =0.obs;

  void increase(){
    count++;
  }

  void decrease(){
    count--;
  }

}