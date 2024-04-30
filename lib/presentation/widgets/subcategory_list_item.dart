
import 'package:flutter/material.dart';
import 'package:zarafa_flutter_app/data/models/subcategory.dart';

class SubcategoryListItem extends StatelessWidget {
  final Subcategory subcategory;

  SubcategoryListItem({required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subcategory.title),
      onTap: () {
        // Handle subcategory tap
      },
    );
  }
}
