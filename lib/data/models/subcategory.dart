import 'package:zarafa_flutter_app/data/models/subsubcategory.dart';

class Subcategory {
  final String title;
  final String iconPath;
  final List<Subsubcategory> subsubcategories;

  Subcategory({
    required this.title,
    required this.iconPath,
    required this.subsubcategories,
  });
}

