import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zarafa_flutter_app/domain/providers/category_provider.dart';
import '../../domain/providers/subcategory_provider.dart';
import '../../shared/resources/color_manager.dart';
import '../../shared/resources/values_manager.dart';
class SortsButtons extends StatelessWidget {
  const SortsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(26, (index) {

              final letter = String.fromCharCode('A'.codeUnitAt(0) + index);
              return Row(
                children: [
                  ElevatedButton(
                    style:  ElevatedButton.styleFrom(
                        fixedSize: Size(mediaQueryWidth(context) * 0.15, mediaQueryHeight(context) * 0.03),
                        backgroundColor: ColorManager.backsecondary,
                        foregroundColor: ColorManager.primary,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),

                        )
                    ),

                    onPressed: () {
                      // Access the CategoryProvider instance using Provider.of
                      final categoryProvider = Provider.of<SubCategoryProvider>(context, listen: false);
                      // Filter the subcategories based on the selected letter
                      categoryProvider.filterSubsubCategoriesByLetter(letter);
                    },
                    child: Text(letter),
                  ),
                  SizedBox(width: mediaQueryWidth(context) * 0.02  ),
                ],
              );
            }),
          ),
        ),
        SizedBox(height: mediaQueryWidth(context) * 0.02  ), // Adjust the spacing as needed
        // ListView for displaying subcategories

      ],
    );
  }
}
