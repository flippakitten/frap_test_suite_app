import 'package:flutter/material.dart';
import 'package:frap_test_suite_app_ui/src/animations/slide_right_route.dart';
import 'package:frap_test_suite_app_ui/src/constants/routing.dart';
import 'package:frap_test_suite_app_ui/src/screens/home_screen.dart';
import 'package:frap_test_suite_app_ui/src/screens/undefined_route_screen.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
     case HomeScreenRoute:
      return SlideRightRoute(widget:HomeScreen());
    default:
      return SlideRightRoute(widget:UndefinedRouteScreen());
  }
}