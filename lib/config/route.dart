import 'package:ecommerce/screens/welcome.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => WelcomeScreen(),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
