import 'package:flutter/material.dart';

import '../../shared/resources/assets_manager.dart';

class BackgroundImage extends StatelessWidget {
  final String backgroundImagePath;
  final String iconPath;
  const BackgroundImage({super.key, required this.backgroundImagePath, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none, children: [
      Stack(
        children: [
          Image(image:AssetImage( backgroundImagePath)),
          Positioned(
              top: -MediaQuery.of(context).size.height * 0.06,
              left: (MediaQuery.of(context).size.width/20),

              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image(
                  image:AssetImage( ImageAssets.backArrow,),
                  width: MediaQuery.of(context).size.width * 0.14,
                  height: MediaQuery.of(context).size.height * 0.2,

                ),
              )
          )
        ],
      ),
      Positioned(
          bottom: -MediaQuery.of(context).size.height * 0.06,
          left: (MediaQuery.of(context).size.width/20),

          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image(
              image:AssetImage(iconPath),
            ),
          )
      )
    ],
    );
  }
}
