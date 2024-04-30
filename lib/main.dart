import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zarafa_flutter_app/shared/resources/app_strings.dart';
import 'package:zarafa_flutter_app/shared/resources/routes_manager.dart';
import 'domain/providers/category_provider.dart';
import 'domain/providers/subcategory_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
        ChangeNotifierProvider(create: (context) => SubCategoryProvider()),
      ],
      child:  const MaterialApp(
        title: AppStrings.appTitle,
        onGenerateRoute: RouteGenerator.getRoute,
        debugShowCheckedModeBanner: false, // Applying your custom theme
      ),
    );
  }
}
