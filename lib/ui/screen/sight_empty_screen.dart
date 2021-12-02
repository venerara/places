import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/components/tapbar_custom.dart';
import 'package:places/ui/screen/components/bottomnavigationbar_custom.dart';

class EmptyVisitingScreenState extends State {
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
                  _SightEmptyFavoritesCard(
                    placeImage: 'sign-out',
                    textAction: AppStrings.placeAdvice1,
                  ),

                  //second tabbarview
                  _SightEmptyFavoritesCard(
                    placeImage: 'road-map',
                    textAction: AppStrings.placeAdvice2,
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

class _SightEmptyFavoritesCard extends StatelessWidget {
  final String placeImage;
  final String textAction;
  const _SightEmptyFavoritesCard({
    Key? key,
    required this.placeImage,
    required this.textAction,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon(
          AssetImage('res/images/$placeImage.png'),
          size: 60.0,
        ),
        const SizedBox(height: 25),
        Text(
          AppStrings.placeEmpty,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 15),
        Text(
          textAction,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
