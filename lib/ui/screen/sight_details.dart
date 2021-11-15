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
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    strokeWidth: 0.7,
                  ),
                  Container(
                    alignment: FractionalOffset(0.05, 0.05),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('res/images/cave.png'),
                      ),
                    ),
                    child: ButtonList(),
                  ),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: AppStrings.placeName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: ('\n' + AppStrings.placeType),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: AppStrings.placeMode,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
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
                      padding: EdgeInsets.all(10),
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
                      padding: EdgeInsets.all(10),
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
