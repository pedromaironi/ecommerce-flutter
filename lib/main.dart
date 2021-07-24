import 'package:ecommerce/screens/product_detail.dart';
import 'package:ecommerce/screens/welcome.dart';
import 'package:ecommerce/widgets/customRoute.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Container(
              )
            ),
          );
        },
        );
  }
}
