import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/res/buttons.dart';
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
      height: 500,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: TextWrapper(text: sight.type),
                    ),
                  ),
                  // ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      child: Icon(Icons.favorite_border, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
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

class TextWrapper extends StatelessWidget {
  final String text;
  const TextWrapper({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 18, color: Colors.white));
  }
}
