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
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                color: Colors.greenAccent,
                alignment: FractionalOffset(0.05, 0.05),
                child: ButtonList(),
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: AppStrings.placeName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          children: [
                            TextSpan(
                              text: ('\n' + AppStrings.placeType),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: AppStrings.placeMode,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.placeDetails,
                        softWrap: true,
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.bottomCenter,
                      child: RouteButton(),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ButtonNavigationBar(
                              icon: Icons.calendar_today_rounded,
                              iconColor: Colors.grey,
                              title: AppStrings.titlePlanbutton),
                        ),
                        Expanded(
                          child: ButtonNavigationBar(
                              icon: Icons.favorite_border,
                              iconColor: Colors.black,
                              title: AppStrings.titleFavoritebutton),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
