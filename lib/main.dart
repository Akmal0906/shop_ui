import 'package:flutter/material.dart';
import 'package:shop_ui/pages/home_page.dart';
import 'package:shop_ui/pages/shop_ui.dart';

import 'pages/apple_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const AppleUI(),
      routes: {
        AppleUI.id:(context)=>const AppleUI(),
        PartPage.id:(context)=>const PartPage(),
        ShopUI.id:(context)=>const ShopUI(),
      },
    );
  }
}


