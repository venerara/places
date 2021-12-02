import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/res/colors.dart';
import 'package:places/ui/screen/sight_favorites_card.dart';
import 'package:places/ui/screen/components/bottomnavigationbar_custom.dart';
import 'package:places/ui/screen/components/tapbar_custom.dart';

class VisitingScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            AppStrings.titleAppBar1,
          ),
        ),
        body: Column(
          children: const [
            CustomTabBar(),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // first tabbarview
                  Padding(
                    padding: EdgeInsets.only(top: 35, left: 20, right: 20),
                    child: SightFavotitesCard(
                      placeImage: AppStrings.placeImage1,
                      placesName: AppStrings.placeName1,
                      colorName: colorGreen,
                      textAction: AppStrings.textAction1,
                      icon: Icons.calendar_today_outlined,
                    ),
                  ),
                  //second tabbarview
                  Padding(
                    padding: EdgeInsets.only(top: 35, left: 20, right: 20),
                    child: SightFavotitesCard(
                      placeImage: AppStrings.placeImage2,
                      placesName: AppStrings.placeName2,
                      colorName: colorGrey,
                      textAction: AppStrings.textAction2,
                      icon: Icons.share,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(
          currentIndex: 0,
        ),
      ),
    );
  }
}
