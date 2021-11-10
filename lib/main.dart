import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        home: const SightListScreen(),
      ),

    );
  }
}

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
      // Изменение  высоты Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0, // Убираем тень
          // Создание заголовка Appbar в 2 строки
          title: const Text(
            "Список\nинтересных мест",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}

