import 'package:flutter/material.dart';
import 'package:zarafa_flutter_app/data/models/category.dart';
import 'package:zarafa_flutter_app/shared/resources/assets_manager.dart';

import '../../data/dummy_data.dart';
import '../../data/models/subcategory.dart';
import '../../data/models/subsubcategory.dart';

class SubCategoryProvider extends ChangeNotifier {


  Category? _selectedCategory;
  Subcategory? _selectedSubcategory;

  Category? get selectedCategory => _selectedCategory;

  Subcategory? get selectedSubcategory => _selectedSubcategory;

  List<Subcategory> getSubcategoriesForCategory(Category category) {
    return category.subcategories;
  }

  void selectSubcategory(Subcategory subcategory) {
    _selectedSubcategory = subcategory;
    notifyListeners();
  }

  void clearSelectedSubcategory() {
    _selectedSubcategory = null;
    print("cleared selected subcategory");
    notifyListeners();
  }

  List<Subsubcategory> getSubsubcategoriesForSubcategory(
      Subcategory subcategory) {
    return subcategory.subsubcategories;
  }
  List<Subsubcategory> subsubCategories = []; // Assuming this is your list of subsubcategories
  List<Subsubcategory> _filteredSubsubCategories = []; // Define the filtered list

  void filterSubsubCategoriesByLetter(String letter) {
    _filteredSubsubCategories = subsubCategories.where((subsubCategory) {
      // Assuming title is the property containing the category title
      return subsubCategory.title.startsWith(letter.toUpperCase());
    }).toList();
    notifyListeners();
  }
  List<Subsubcategory> get filteredSubsubCategories => _filteredSubsubCategories;


}
