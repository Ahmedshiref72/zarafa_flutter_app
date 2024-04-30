import 'package:flutter/material.dart';
import 'package:zarafa_flutter_app/data/models/category.dart';
import 'package:zarafa_flutter_app/shared/resources/assets_manager.dart';

import '../../data/dummy_data.dart';
import '../../data/models/subcategory.dart';
import '../../data/models/subsubcategory.dart';

class CategoryProvider extends ChangeNotifier {


  List<Category> get filteredCategories => _filteredCategories;

  List<Category> _filteredCategories = [];

  void filterCategories(String query) {
    if (query.isEmpty) {
      _filteredCategories = [];
    } else {
      _filteredCategories = categories
          .where((category) =>
              category.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  List<Category> getAllCategories() {
    return categories;
  }

  List<Category> getAllPopularCategories() {
    return popularCategories;
  }



}
