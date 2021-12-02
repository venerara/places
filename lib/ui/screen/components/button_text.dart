import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/res/colors.dart';

/// кнопка ПОСТРОИТЬ МАРШРУТ
class RouteButton extends StatelessWidget {
  const RouteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(colorGreen),
        foregroundColor: MaterialStateProperty.all<Color>(colorWhite),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 50, width: 25),
          const Icon(Icons.directions_bus),
          const SizedBox(width: 5),
          const Text(AppStrings.titleRoutebutton),
        ],
      ),
    );
  }
}
