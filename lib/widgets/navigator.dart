import 'package:car_rental/controller/navigation%20controller.dart';
import 'package:car_rental/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigation_Bottons extends StatefulWidget {
  const Navigation_Bottons({super.key});

  @override
  State<Navigation_Bottons> createState() => _Navigation_BottonsState();
}

class _Navigation_BottonsState extends State<Navigation_Bottons> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Navigation_controller>(
      init: Navigation_controller(),
      builder:(controller)=> Scaffold(


        body: controller.current_widget,
        bottomNavigationBar:BottomNavigationBar(
               selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
               backgroundColor: Colors.black,
               showSelectedLabels: true,
              showUnselectedLabels: false,
              onTap: (i){
              controller.change(i);
              },


              currentIndex: controller.index,
              items: [
                BottomNavigationBarItem(

                  label: 'Home',
                    icon: Icon(Icons.home_filled)),
                BottomNavigationBarItem(
                  label: 'Calender',
                    icon: Icon(Icons.calendar_month)),
                BottomNavigationBarItem(
                  label: 'Notifications',
                    icon: Icon(Icons.notifications)),
                BottomNavigationBarItem(
                  label: 'Profile',
                    icon: Icon(Icons.person)),
              ]),

      ),
    );
  }
}
