import 'package:flutter/cupertino.dart';

Widget iconWithName({required IconData iconPath, required String name}) {
  return Column(
    children: [
      Icon(iconPath),
      SizedBox(width: 10),
      Text(name),
    ],
  );
}