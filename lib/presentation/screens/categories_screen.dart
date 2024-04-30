import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zarafa_flutter_app/shared/resources/app_strings.dart';
import 'package:zarafa_flutter_app/shared/resources/values_manager.dart';
import '../../domain/providers/category_provider.dart';
import '../../shared/resources/navigation.dart';
import '../../shared/resources/routes_manager.dart';
import '../../shared/resources/styles_manager.dart';
import '../widgets/category_search_bar.dart';
import '../widgets/item_widget.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.categories,
          style: CustomTextStyles.regular(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const CategorySearchBar(),
              Text(AppStrings.popularCategories, style: CustomTextStyles.regular()),
              SizedBox(
                height: mediaQueryHeight(context) * 0.03,
              ),
              Consumer<CategoryProvider>(
                builder: (context, categoryProvider, child) {
                  final categories = categoryProvider.getAllPopularCategories();

                  return SizedBox(
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
                  );
                },
              ),
              SizedBox(
                height: mediaQueryHeight(context) * 0.03,
              ),
              Text(AppStrings.popularCategories, style: CustomTextStyles.regular()),
              SizedBox(
                height: mediaQueryHeight(context) * 0.03,
              ),
              Consumer<CategoryProvider>(
                builder: (context, categoryProvider, child) {
                  final categories = categoryProvider.getAllCategories();

                  return SizedBox(
                    height: mediaQueryHeight(context) * 0.5,
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
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
