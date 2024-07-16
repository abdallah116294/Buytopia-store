import 'package:ecommerce_app/core/routes/base_routes.dart';
import 'package:ecommerce_app/test_one_screen.dart';
import 'package:ecommerce_app/test_two_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String testone = "testone";
  static const String testtwoe = "testtwo";
  static Route<void>? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testone:
        return BaseRoute(page: TestOneScreen());
      case testtwoe:
        return BaseRoute(page: TestTwoScreen());
        
    }
  }
}
