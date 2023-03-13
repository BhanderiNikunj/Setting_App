import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_app/Screens/Home/Provider/HomeProvider.dart';
import 'package:settings_app/Screens/Home/View/HomePageAndroid.dart';
import 'package:settings_app/Screens/Home/View/HomePageIOS.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
        ],
        child: Platform.isAndroid ? IOSView() : androidView(),
    ),
  );
}

Widget androidView() {
  return MaterialApp(
    routes: {
      '/': (context) => HomeScreenAndroid(),
    },
  );
}

Widget IOSView() {
  return CupertinoApp(
    routes: {
      '/': (p0) => HomeScreenIos(),
    },
  );
}
