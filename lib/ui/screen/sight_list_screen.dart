import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  int count = 0;
  void incrementcount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Изменение высоты Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0, // Убираем тень
          // Создание заголовка в 2 строки с разноцветными буквами
          title: RichText(
            text: TextSpan(
                text: "С",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
                children: [
                  TextSpan(
                    text: "писок\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                      text: "и",
                      style: TextStyle(
                        color: Colors.yellow,
                      ),
                      children: [
                        TextSpan(
                          text: "нтересных мест",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ]),
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
