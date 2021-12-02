import 'package:flutter/material.dart';
import 'package:places/ui/screen/res/themes.dart';
import 'package:places/ui/screen/sight_empty_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDarkMode = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo App',
      theme: isDarkMode ? darkTheme : lightTheme,
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
    return EmptyVisitingScreenState();
  }
}
