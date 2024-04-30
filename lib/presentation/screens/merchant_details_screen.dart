import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zarafa_flutter_app/data/models/subsubcategory.dart';
import 'package:zarafa_flutter_app/presentation/widgets/background_image.dart';
import 'package:zarafa_flutter_app/presentation/widgets/rating.dart';
import 'package:zarafa_flutter_app/presentation/widgets/row_of_headline.dart';
import 'package:zarafa_flutter_app/shared/resources/app_strings.dart';
import 'package:zarafa_flutter_app/shared/resources/assets_manager.dart';
import 'package:zarafa_flutter_app/shared/resources/values_manager.dart';

import '../../shared/resources/color_manager.dart';
import '../../shared/resources/font_manager.dart';
import '../../shared/resources/styles_manager.dart';
import '../widgets/alltags.dart';
import '../widgets/column_of_city.dart';
import '../widgets/icon_with_name.dart';
import '../widgets/row_of_buttons.dart';
import '../widgets/row_of_offers.dart';

class MerchantDetailsScreen extends StatelessWidget {
  final Subsubcategory subSubCategory;

  const MerchantDetailsScreen({
    Key? key,
    required this.subSubCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackgroundImage(
                backgroundImagePath: subSubCategory.backgroundImagePath,
                iconPath: subSubCategory.iconPath,
              ),
              const Rating(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  subSubCategory.subtitle,
                  style: CustomTextStyles.bold22(),
                ),
              ),
              SizedBox(height: mediaQueryHeight(context) * 0.01),
              AllTags(),
              const RowOfButtons(),
              Divider(
                thickness: 7,
                color: ColorManager.lightBack,
              ),
              ButtonRow(),
              SizedBox(height: mediaQueryHeight(context) * 0.01),
              const RowOfHeadline(),
              SizedBox(height: mediaQueryHeight(context) * 0.01),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subSubCategory.citys.length,
                itemBuilder: (context, index) {
                  return ColumnOfCity(
                    title: subSubCategory.citys[index].title,
                    iconPath: subSubCategory.citys[index].iconPath,
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
