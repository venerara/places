import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(
            25.0,
          ),
        ),
        child: TabBar(
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(
              25.0,
            ),
            color: Colors.deepPurple[900],
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            const Tab(
              text: AppStrings.titleTabBar1,
            ),
            const Tab(
              text: AppStrings.titleTabBar2,
            ),
          ],
        ),
      ),
    );
  }
}
