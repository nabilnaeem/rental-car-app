import 'package:car_rental/controller/data%20control.dart';
import 'package:car_rental/widgets/Hot%20deals%20item.dart';
import 'package:car_rental/widgets/brands.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: Text('Browse Cars',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu))
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [

                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                   padding:EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 15,


                        )
                      ]
                    ),
                    child: TextFormField(



                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey
                        ),
                        suffixIcon: Icon(Icons.search),

                        fillColor: Colors.white,
                       filled: true,

                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),




                      ),
                    ),
                  ),
                )
              ],
            ),
            Hot_deal_list(h),
           Brands_list(h)
          ],
        ),
      ),
    );
  }
  Widget Hot_deal_list(h){
    return GetBuilder<Data_controller>(
      init: Data_controller(),
      builder:(controller)=> Container(
        padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Hot ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('deals',style: TextStyle(fontSize: 20,),)

              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.Data.map((e)=>Hot_deal_car_item(h,e,context)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget Brands_list(h){
    return GetBuilder<Data_controller>(
      builder:(controller)=> Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text('Top ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('Brands',style: TextStyle(fontSize: 20,),)
        
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.Data.map((e)=>e.brand).map((c)=>Brand_item(h, c)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
