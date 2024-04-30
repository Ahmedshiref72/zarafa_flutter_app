import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zarafa_flutter_app/data/models/category.dart';
import 'package:zarafa_flutter_app/presentation/widgets/sub_category_item.dart';
import 'package:zarafa_flutter_app/domain/providers/category_provider.dart';
import 'package:zarafa_flutter_app/shared/resources/app_strings.dart';
import 'package:zarafa_flutter_app/shared/resources/styles_manager.dart';

import '../../shared/resources/color_manager.dart';
import '../../shared/resources/values_manager.dart';
class RowOfSort extends StatelessWidget {
  const RowOfSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.Text,
              style: CustomTextStyles.bold( ),
            ),
            TextButton(onPressed: (){},
                style: TextButton.styleFrom(foregroundColor: ColorManager.primary),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.search),
                    SizedBox(width: mediaQueryWidth(context) * 0.02   ),
                    Text(AppStrings.sort, style: CustomTextStyles.regularprimary(),),
                    const Icon(Icons. keyboard_arrow_down),
                  ],
                )),
          ],
        ),

      ]
    );
  }
}
