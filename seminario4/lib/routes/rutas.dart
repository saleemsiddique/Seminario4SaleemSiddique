import 'package:flutter/material.dart';
import 'package:seminario4/screens/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
 return <String, WidgetBuilder>{
 'home': (BuildContext context) => HomePageScreen(),
 };
}