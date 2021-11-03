import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';

/// кнопка Запланировать
class PlanButton extends StatelessWidget {
  const PlanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border),
          Text(titlePlanbutton),
          SizedBox(width: 30, height: 30),
        ],
      ),
    );
  }
}

/// кнопка В Избранное
class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border),
          Text(titleFavoritebutton),
          SizedBox(width: 30, height: 30),
        ],
      ),
    );
  }
}

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
          Text(titleRoutebutton),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(70.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        titleAppBar,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
        maxLines: 2,
      ),
    );
  }
}
