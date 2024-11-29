import 'package:car_rental/models/car%20model.dart';
import 'package:car_rental/views/show%20room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Hot_deal_car_item(h,Car_model i,context){
  return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (c)=>Show_Room(i)));
    },
    child: Container(
      margin: EdgeInsets.all(5),
      clipBehavior: Clip.antiAlias,
      height: h/3.2,
      width: h/4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue.shade700,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15,bottom: 0,right: 10,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(i.brand.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                Text('\$ '+i.price.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: [
                Text(i.model,style: TextStyle(color: Colors.white),),
                Text('/day',style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Expanded(
            child: Container(

              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(i.image[0]),fit: BoxFit.fitHeight,
                 alignment: Alignment.centerLeft
                )
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Details",style: TextStyle(color: Colors.white),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),
                  color: Colors.grey.shade800
                ),
                child: Row(
                  children: [
                    Text('Rent Now',style: TextStyle(color: Colors.white),),
                    Icon(Icons.arrow_forward,color: Colors.white,)
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    ),
  );
}