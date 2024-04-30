import 'package:flutter/material.dart';
import 'package:zarafa_flutter_app/data/models/subcategory.dart';
import 'package:zarafa_flutter_app/data/models/subsubcategory.dart';
import 'package:zarafa_flutter_app/presentation/screens/categories_screen.dart';
import 'package:zarafa_flutter_app/presentation/screens/subcategories_screen.dart';

import '../../data/models/category.dart';
import '../../presentation/screens/merchant_details_screen.dart';
import 'app_strings.dart';

class Routes {
  static const String home = "/";
  static const String homeScreenRoute = "/homeScreen";
  static const String subcategoriesScreen = "/subcategoriesScreen";
  static const String detailsCategoriesScreen = "/detailsCategoriesScreen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) =>
            CategoryScreen()  );

      case Routes.subcategoriesScreen:
      return MaterialPageRoute(builder: (_) =>  SubcategoriesScreen(category: routeSettings.arguments as Category,));

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) =>
          Scaffold(
            appBar: AppBar(
              title: const Text(AppStrings.wrongScreen),
            ),
            body: const Center(child: Text(AppStrings.routeNotFound)),
          ),
    );
  }
}
