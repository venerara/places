import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/res/colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: colorWhiteGrey,
          borderRadius: BorderRadius.circular(
            25.0,
          ),
        ),
        child: const TabBar(
          tabs: [
            Tab(
              text: AppStrings.titleTabBar1,
            ),
            Tab(
              text: AppStrings.titleTabBar2,
            ),
          ],
        ),
      ),
    );
  }
}
