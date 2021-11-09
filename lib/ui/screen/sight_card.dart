import 'package:flutter/material.dart';

class SightCard extends StatelessWidget {
  final String name; //название достопримечательности
  final double lat; //координата места
  final double lon; //координата места
  final String url; //путь до фотографии в интернете
  final String details; //описание достопримечательности
  final String type; //тип достопримечательности

  SightCard({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.details,
    required this.type,
  });

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
                    topRight: Radius.circular(20))),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: (Text(
                      type,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ),
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
          )),
          Expanded(
            child: Container(
              color: Colors.white70,
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: (name + '\n'),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                        text: ('\n' + details),
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
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
