import 'package:flutter/material.dart';
import '../../shared/resources/font_manager.dart';
import '../../shared/resources/styles_manager.dart';

class RowOfHeadline extends StatelessWidget {
  const RowOfHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Available Offers',
              style: CustomTextStyles.bold22(fontSize: FontSize.s20),
            ),
            Text(
              'How to use offers',
              style: CustomTextStyles.medium(
                fontSize: FontSize.s14,
              ),
            ),
            Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.question_mark_outlined,
                  color: Colors.grey,
                ))
          ]),
    );
  }
}
