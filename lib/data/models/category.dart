
import 'package:flutter/cupertino.dart';
import 'package:zarafa_flutter_app/data/models/subcategory.dart';

class Category {
  final String title;
  final String iconPath;
  final int numberOfMerchants;
  final List<Subcategory> subcategories;
  final double popularityIndicator;

  Category({
    required this.title,
    required this.iconPath,
    required this.numberOfMerchants,
    required this.subcategories,
    required this.popularityIndicator,
  });
}

