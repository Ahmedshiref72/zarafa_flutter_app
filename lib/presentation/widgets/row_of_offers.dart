import 'package:flutter/material.dart';
import 'package:zarafa_flutter_app/shared/resources/color_manager.dart';

class ButtonRow extends StatefulWidget {
  @override
  _ButtonRowState createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:selectedIndex == 0 ?  ColorManager.backsecondary : Colors.white,
            shape:
            StadiumBorder(

                side: BorderSide(
                  color: selectedIndex == 0 ? Colors.white : Colors.white,
                )
            ),
          ),
          child: Text('Available Offers'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          style: ElevatedButton.styleFrom(

            backgroundColor:selectedIndex == 1 ?  ColorManager.backsecondary : Colors.white,
            shape:
            StadiumBorder(

                side: BorderSide(
                  color: selectedIndex == 1 ? Colors.white : Colors.white,
                )
            ),
          ),
          child: Text('Menu'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:selectedIndex == 2 ?  ColorManager.backsecondary : Colors.white,
            shape:
            StadiumBorder(

                side: BorderSide(
                  color: selectedIndex == 2 ? Colors.white : Colors.white,
                )
            ),
          ),
          child: Text('About'),
        ),
      ],
    );
  }
}

