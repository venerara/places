import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/components/bottomnavigationbar_custom.dart';
import 'package:places/ui/screen/sight_card1.dart';

class VisitingScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            AppStrings.titleAppBar1,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
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
                    color: Colors.blueGrey,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey[600],
                  tabs: [
                    Tab(
                      text: AppStrings.titleAppBar1,
                    ),
                    Tab(
                      text: AppStrings.titleTabBar2,
                    ),
                  ],
                ),
              ),
              // TabBarView
              Expanded(
                child: TabBarView(
                  children: [
                    // first tabbarview
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: SightCard1(
                        placeImage: AppStrings.placeImage1,
                        placesName: AppStrings.placeName1,
                        colorName: Colors.green,
                        textAction: AppStrings.textAction1,
                        icon: Icons.calendar_today_outlined,
                      ),
                    ),
                    //second tabbarview
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: SightCard1(
                        placeImage: AppStrings.placeImage2,
                        placesName: AppStrings.placeName2,
                        colorName: Colors.grey,
                        textAction: AppStrings.textAction2,
                        icon: Icons.share,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 0,
        ),
      ),
    );
  }
}
