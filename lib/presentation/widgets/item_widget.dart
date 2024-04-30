import 'package:flutter/material.dart';
import 'package:zarafa_flutter_app/shared/resources/navigation.dart';

import '../../shared/resources/color_manager.dart';
import '../../shared/resources/routes_manager.dart';
import '../../shared/resources/styles_manager.dart';
import '../../shared/resources/values_manager.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {super.key,
      required this.numberOfMerchants,
      required this.iconPath,
      required this.title});

  final String numberOfMerchants;
  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 250,
      decoration: BoxDecoration(
        color: ColorManager.backsecondary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: mediaQueryHeight(context) * 0.009),
                    Image(
                      width: mediaQueryWidth(context) * 0.15,

                      color: ColorManager.primary,
                      image: AssetImage(
                        iconPath,
                      ),
                    ),
                    SizedBox(height: mediaQueryHeight(context) * 0.009),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.mediumBack(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: ColorManager.primary,
                // Set the background color of the avatar
                child: Text(
                  numberOfMerchants, // Number to be displayed
                  style: CustomTextStyles.light(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
