import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/components/button_text.dart';
import 'package:places/ui/screen/components/button_navigationbar.dart';
import 'package:places/mocks.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //SizedBox(
      //height: 300,

      height: 500,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            //child: AspectRatio(
            // aspectRatio: 3 / 2,
            child: Container(
              padding: const EdgeInsets.only(left: 30.0, top: 20.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.type,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Spacer(),
                  ButtonNavigationBar(
                      icon: Icons.favorite_border,
                      iconColor: Colors.white,
                      title: ""),
                ],
              ),
            ),
          ),
          //),
          Expanded(
            child: Container(
              //AspectRatio(
              //aspectRatio: 3 / 2,

              //constraints: BoxConstraints(maxWidth: 250),
              color: Colors.white70,
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: (sight.name + '\n'),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: ('\n' + sight.details),
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
