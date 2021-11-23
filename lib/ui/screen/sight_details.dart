// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/components/button_text.dart';
import 'package:places/ui/screen/components/button_navigationbar.dart';
import 'package:places/ui/screen/components/button_list.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Expanded(
            child: const _PlaceImage(),
            flex: 1,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    AppStrings.placeName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        AppStrings.placeType,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        AppStrings.placeMode,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    AppStrings.placeDetails,
                  ),
                  const SizedBox(height: 35),
                  const RouteButton(),
                  const SizedBox(height: 50),
                  // ignore: prefer_const_constructors
                  _BottomNavigationBar(),
                ],
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class _PlaceImage extends StatelessWidget {
  const _PlaceImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          strokeWidth: 0.7,
        ),
        Container(
          alignment: const FractionalOffset(0.05, 0.05),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('res/images/cave.png'),
            ),
          ),
          child: const ButtonList(),
        ),
      ],
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const ButtonNavigationBar(
            icon: Icons.calendar_today_rounded,
            iconColor: Colors.grey,
            title: AppStrings.titlePlanbutton),
        const ButtonNavigationBar(
            icon: Icons.favorite_border,
            iconColor: Colors.black,
            title: AppStrings.titleFavoritebutton),
      ],
    );
  }
}
