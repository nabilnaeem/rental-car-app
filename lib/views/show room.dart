import 'package:car_rental/models/car%20model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Show_Room extends StatefulWidget {
Car_model car;


Show_Room(this.car);

  @override
  State<Show_Room> createState() => _Show_RoomState(car);
}

class _Show_RoomState extends State<Show_Room> {
  Car_model car;

  _Show_RoomState(this.car);
  int current_index=0;

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.menu)
        ],
      ),
      body:Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Text(car.brand.name+" ",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text(car.model,style: TextStyle(color: Colors.grey.shade600,fontSize: 30),),
                ],
              ),
            ),
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (i,c){
                      setState(() {
                        current_index=i;
                      });
                    },
                  
                    height: 200,
                    viewportFraction:1,),
                  items: car.image.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(

                            ),
                            child: Image(image: NetworkImage(i))
                        );
                      },
                    );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(car.image.length, (int i)=>Icon(Icons.circle,color: i==current_index?Colors.black:Colors.grey,size: 12,)),
                )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                    ),
                  ),
                ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)
                  ),
                ),
              ],),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)
              ),
              height: 100,
              width: w,
              child: Column(
                children: [
                  ListTile(

                    leading:Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                       image: DecorationImage(image: NetworkImage(car.brand.image))
                      ),
                    ),//image
                    title: Text(car.brand.name,style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.w500
                    ),),
                    subtitle: Text('sub',style: TextStyle(
                        fontSize: 17
                    )),
                    trailing:   RatingBarIndicator(

                        itemSize: 15,
                        rating: car.brand.rate,
                        itemBuilder: (i,c)=>Icon(Icons.circle,color: Colors.black,)),//rate
                  ),
                  Text('data')
                ],
              )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("\$${car.price}".toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Text('/Day'),
                        ],),),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        margin: EdgeInsets.symmetric(vertical: 15),
                      
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text('Rent Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}

