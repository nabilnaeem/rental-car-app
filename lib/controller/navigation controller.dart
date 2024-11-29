import 'package:car_rental/views/calender.dart';
import 'package:car_rental/views/home.dart';
import 'package:car_rental/views/notification.dart';
import 'package:car_rental/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Navigation_controller extends GetxController{
  int index=0;
  Widget current_widget=Home();

  void change(int select){
    index =select;
    switch (select) {
      case 0: current_widget=Home();
      break;
      case 1: current_widget=Calender();
      break;
      case 2: current_widget=Notification_Screen();
      break;
      case 3: current_widget=Profile();
      break;


    }
    update();
  }
}