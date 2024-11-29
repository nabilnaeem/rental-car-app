import 'dart:ui';

import 'package:car_rental/models/brand%20model.dart';

class Car_model{
  String model;
  List<String> image;
double price;
Color color;
String motor,speed,typ,bag;
int seats;
 Brand_Model brand;

  Car_model(
      {
        required this.brand,
        required this.model,
        required this.image,
        required  this.price,
        required this.color,
        required this.motor,
        required this.speed,
        required this.typ,
        required this.bag,
        required this.seats,

      });
}