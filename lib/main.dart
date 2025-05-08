import 'package:flutter/material.dart';

import 'FoodHome.dart';
import 'food.dart'

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FoodHome(),
    );
  }
}
