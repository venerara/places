import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';

/// кнопка ПОСТРОИТЬ МАРШРУТ
class RouteButton extends StatelessWidget {
  const RouteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50, width: 20),
          Icon(Icons.directions_bus),
          Text(AppStrings.titleRoutebutton),
        ],
      ),
    );
  }
}
