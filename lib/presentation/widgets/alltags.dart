import 'package:flutter/material.dart';
import '../../shared/resources/font_manager.dart';
import '../../shared/resources/styles_manager.dart';
import '../../shared/resources/values_manager.dart';
import '../widgets/icon_with_name.dart';
class AllTags extends StatelessWidget {
  const AllTags({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Text('Chinese # Chicken # Salade # Soup',
              style: CustomTextStyles.regular(fontSize: FontSize.s14)),
          SizedBox(width: mediaQueryWidth(context) * 0.05),
          const CircleAvatar(
            radius: 4,
            backgroundColor: Colors.black,
          ),
          SizedBox(width: mediaQueryWidth(context) * 0.01),
          Text('All Tags',
              style: CustomTextStyles.regularprimary(
                  fontSize: FontSize.s14,
                  textDecoration: TextDecoration.underline)),
        ],
      ),
    );
  }
}
