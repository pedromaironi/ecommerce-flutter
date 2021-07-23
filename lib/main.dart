import 'package:ecommerce/screens/product_detail.dart';
import 'package:ecommerce/screens/welcome.dart';
import 'package:ecommerce/widgets/customRoute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Juanito 7Up",
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
       onGenerateRoute: (RouteSettings settings) {
        if (settings.name.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => WelcomeScreen());
        }
      },
      initialRoute: "MainPage",
    );
  }
}
