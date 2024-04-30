import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zarafa_flutter_app/shared/resources/values_manager.dart';
import '../../shared/resources/font_manager.dart';
import '../../shared/resources/styles_manager.dart';

class ColumnOfCity extends StatelessWidget {
  final String title;
  final String iconPath;
  const ColumnOfCity({super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: CustomTextStyles.regular(),
              ),
              Icon(Icons.keyboard_arrow_up)
            ],
          ),
        ),
        SizedBox(height: mediaQueryHeight(context) * 0.01),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Text(
                'Unlock Offers',
                style: CustomTextStyles.regularprimary(
                  fontSize: FontSize.s14,
                  textDecoration: TextDecoration.underline,
                ),
              ),
              SizedBox(width: mediaQueryWidth(context) * 0.01),
              Icon(Icons.lock_outline_rounded)
            ],
          ),
        ),
        SizedBox(height: mediaQueryHeight(context) * 0.01),
        Image(image: AssetImage(iconPath)),
        SizedBox(height: mediaQueryHeight(context) * 0.01),
      ],
    );
  }
}
