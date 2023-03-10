import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_app/Screens/Home/Provider/HomeProvider.dart';
import 'package:settings_app/Screens/Home/View/HomePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    ),
  );
}
