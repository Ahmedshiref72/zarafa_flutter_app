import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zarafa_flutter_app/shared/resources/app_strings.dart';

import '../../domain/providers/category_provider.dart';
import '../../shared/resources/color_manager.dart';
import '../../shared/resources/navigation.dart';
import '../../shared/resources/routes_manager.dart';
import '../../shared/resources/values_manager.dart';
import 'item_widget.dart';
class CategorySearchBar extends StatelessWidget {
  const CategorySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: (value) {
            Provider.of<CategoryProvider>(context, listen: false)
                .filterCategories(value);
          },
          decoration: InputDecoration(
            labelText: AppStrings.searchCategories,
            prefixIcon:  Icon(Icons.search, color: ColorManager.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: ColorManager.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color:ColorManager.backsecondary,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(

                color: ColorManager.grey,
              ),
            ),
          ),
        ),



        Consumer<CategoryProvider>(
          builder: (context, categoryProvider, child) {
            final categories = categoryProvider.filteredCategories;
            return Visibility(
              visible: categories.isNotEmpty,
              child:SizedBox(
                height: mediaQueryHeight(context) * 0.19,
                child: GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 18,
                    childAspectRatio: .5 / .68,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    // double containerSize = MediaQuery.of(context).size.width / 3 * 2.5;
                    return GestureDetector(
                      onTap: () {
                        navigateTo(context: context, screenRoute: Routes.subcategoriesScreen,arguments:  categories[index],);
                      },
                      child: ItemWidget(
                        numberOfMerchants: '${categories[index].numberOfMerchants}',
                        iconPath: categories[index].iconPath,
                        title: categories[index].title,
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
