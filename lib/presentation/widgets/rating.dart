import 'package:flutter/material.dart';

import '../../shared/resources/color_manager.dart';
import '../../shared/resources/font_manager.dart';
import '../../shared/resources/styles_manager.dart';
import '../../shared/resources/values_manager.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(

        alignment: Alignment.topRight,
        child: Column(
          children: [
            Container(
                width: mediaQueryWidth(context) * 0.2,
                height: mediaQueryHeight(context) * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorManager.primary,
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_border, color: ColorManager.primary),
                      Text('4.5', style: CustomTextStyles.regularprimary(fontSize: FontSize.s16)),
                    ]
                )
            ),
            Text('5k+ ratings', style: CustomTextStyles.regularprimary(fontSize: FontSize.s12)),
          ],
        ),
      ),
    );
  }
}
