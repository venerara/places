import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/ui/screen/Sight_list_screen.dart';
import 'package:places/ui/screen/sight_details.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(),
      home: const SightDetails(),
    );
  }
}
