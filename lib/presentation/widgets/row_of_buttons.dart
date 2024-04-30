import 'package:flutter/material.dart';
import '../widgets/icon_with_name.dart';
class RowOfButtons extends StatelessWidget {
  const RowOfButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          iconWithName(
            iconPath: Icons.check_box_outlined,
            name: 'Follow',
          ),
          iconWithName(
            iconPath: Icons.call,
            name: 'Call',
          ),
          iconWithName(
            iconPath: Icons.email_outlined,
            name: 'Email',
          ),iconWithName(
            iconPath: Icons.location_on_outlined,
            name: 'Direction',
          ),
          iconWithName(
            iconPath: Icons.flag_outlined,
            name: 'Report',
          ),
          iconWithName(
            iconPath: Icons.file_upload_outlined,
            name: 'Share',
          )
        ],
      ),
    );
  }
}
