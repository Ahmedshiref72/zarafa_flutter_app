import 'package:flutter/material.dart';
import 'package:zarafa_flutter_app/shared/resources/navigation.dart';

import '../../shared/resources/color_manager.dart';
import '../../shared/resources/font_manager.dart';
import '../../shared/resources/routes_manager.dart';
import '../../shared/resources/styles_manager.dart';
import '../../shared/resources/values_manager.dart';

class SubCategoryItemWidget extends StatelessWidget {
  const SubCategoryItemWidget(
      {super.key,

        required this.iconPath,
        required this.title, required this.isSelected, required this.onTap});

  final bool isSelected;
  final VoidCallback onTap;
  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: mediaQueryWidth(context) * 0.30,
            height: mediaQueryHeight(context) * 0.12,
            decoration: BoxDecoration(
              color:  ColorManager.backsecondary,
              borderRadius: BorderRadius.circular(8.0),
              border: isSelected? Border.all(color: ColorManager.primary, width: 2.0) : null,
            ),
            child: Center(
              child: Image(
                width: mediaQueryWidth(context) * 0.15,

                color: ColorManager.primary,
                image: AssetImage(
                  iconPath,
                ),
              ),
            ),
          ),
          SizedBox(height: mediaQueryHeight(context) * 0.009),
          Text(
            title,
            textAlign: TextAlign.center,
            style: CustomTextStyles.mediumBack(fontSize: FontSize.s14),
          ),
        ],
      ),
    );
  }
}
