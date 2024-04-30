import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zarafa_flutter_app/data/models/category.dart';
import 'package:zarafa_flutter_app/presentation/widgets/row_of_sort.dart';
import 'package:zarafa_flutter_app/presentation/widgets/sorts_buttons.dart';
import 'package:zarafa_flutter_app/presentation/widgets/sub_category_item.dart';
import 'package:zarafa_flutter_app/domain/providers/category_provider.dart';
import 'package:zarafa_flutter_app/shared/resources/app_strings.dart';
import 'package:zarafa_flutter_app/shared/resources/styles_manager.dart';

import '../../data/dummy_data.dart';
import '../../domain/providers/subcategory_provider.dart';
import '../../shared/resources/color_manager.dart';
import '../../shared/resources/navigation.dart';
import '../../shared/resources/routes_manager.dart';
import '../../shared/resources/values_manager.dart';
import 'merchant_details_screen.dart';

class SubcategoriesScreen extends StatelessWidget {
  final Category category;


  const SubcategoriesScreen({super.key, required this.category});

  @override

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()  {
        Provider.of<SubCategoryProvider>(context, listen: false).clearSelectedSubcategory();
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(category.title),

        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.subCategory,
                style: CustomTextStyles.regular(),
              ),
              SizedBox(height: mediaQueryHeight(context) * 0.02),
              Consumer<SubCategoryProvider>(
                builder: (context, categoryProvider, child) {
                  final subcategories = categoryProvider.getSubcategoriesForCategory(category);
                  final selectedSubcategory = categoryProvider.selectedSubcategory;
                  return SizedBox(
                    height: mediaQueryHeight(context) * 0.19,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 18,
                        childAspectRatio: .6 / 10,
                      ),
                      itemCount: subcategories.length,
                      itemBuilder: (context, index) {
                        final subcategory = subcategories[index];
                        return SubCategoryItemWidget(
                          iconPath: subcategory.iconPath,
                          title: subcategory.title,
                          isSelected: subcategory == selectedSubcategory,
                          onTap: () {
                            categoryProvider.selectSubcategory(subcategory);
                          },
                        );
                      },
                    ),
                  );
                },
              ),
               SizedBox(height: mediaQueryHeight(context) * 0.02),
              const RowOfSort(),
              const SortsButtons(),
              Expanded(
                child: Consumer<SubCategoryProvider>(
                  builder: (context, subcategoryProvider, child) {
                    final selectedSubcategory = subcategoryProvider.selectedSubcategory;
                    final subSubCategories = selectedSubcategory != null
                        ? subcategoryProvider.getSubsubcategoriesForSubcategory(selectedSubcategory)
                        : [];
                    return ListView.builder(
                      padding: EdgeInsets.all(mediaQueryWidth(context) * 0.02),
                      itemCount: subSubCategories.length,
                      itemBuilder: (context, index) {
                        final subSubCategory = subSubCategories[index];
                        final category = categories[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0), // Adjust the vertical padding as needed
                          child: ListTile(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MerchantDetailsScreen( subSubCategory: subSubCategory,),
                                ),
                              );
                            },
                            title: Text(subSubCategory.title),
                            leading: Image.asset(subSubCategory.iconPath,scale: 2,),
                            // Add any additional properties you want to display
                          ),
                        );
                      },
                    );

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
