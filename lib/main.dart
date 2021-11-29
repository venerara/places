import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_visiting_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo App',
      theme: ThemeData(),
      home: const VisitingScreen(),
    );
  }
}

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return VisitingScreenState();
  }
}
