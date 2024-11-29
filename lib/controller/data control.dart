import 'package:car_rental/models/brand%20model.dart';
import 'package:car_rental/models/car%20model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Data_controller extends GetxController{
  List<Car_model> Data=[
  Car_model(brand: Brand_Model('Audi', 'https://pictures.dealer.com/k/keyesaudishermanoaksaoa/0416/d82ee5a1af7fd3baa30a98070b91144ax.jpg', 4.2),
      model:'R8 Coupe' , image: ['https://web21st.imgix.net/assets/images/new-vehicles/audi/audi-r8-coupe-2019-v10-performance-quattro-edition-vegas-yellow.png?w=500&auto=format','https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_default/v1/editorial/vhs/Audi-R8.png'], price: 20, color: Colors.white, motor: 'motor', speed: 'speed', typ: 'typ', bag: 'bag', seats: 2),
    Car_model(brand:  Brand_Model('Mercedes', 'https://logos-world.net/wp-content/uploads/2020/05/Mercedes-Benz-Logo.png', 4.5),
        model:'G63 AMG' , image: ['https://platform.cstatic-images.com/in/v2/stock_photos/13848fe2-9599-40be-bca1-8936a079603b/0a74eb12-46c5-4ef4-a51a-8c79a26bb852.png'], price: 20, color: Colors.white, motor: 'motor', speed: 'speed', typ: 'typ', bag: 'bag', seats: 2),
    Car_model(brand:     Brand_Model('Tesla', 'https://1000logos.net/wp-content/uploads/2018/02/Logo-Tesla.jpg', 4.5),
        model:'S' , image: ['https://www.pngarts.com/files/11/Tesla-Model-S-PNG-Image-Background.png'], price: 20, color: Colors.white, motor: 'motor', speed: 'speed', typ: 'typ', bag: 'bag', seats: 2)
  ];

}