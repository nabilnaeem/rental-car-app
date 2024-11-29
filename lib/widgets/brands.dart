import 'package:car_rental/models/brand%20model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget Brand_item(h,Brand_Model i){
  double size=h/6;
  return Container(
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          blurRadius: 15,
          spreadRadius:0.5
        )
      ],
        borderRadius: BorderRadius.circular(20)
    ),
    height: size,
    width: size,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: size/2,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(i.image))
          ),
        ),
        RatingBarIndicator(
          itemSize: 20,
          rating: i.rate,
            itemBuilder: (i,c)=>Icon(Icons.star)),
        Text(i.name,style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    ),
  );
}