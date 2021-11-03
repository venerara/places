import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/res/buttons.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SightCard(sight: Mocks.mocks[0]),
              SightCard(sight: Mocks.mocks[1]),
              SightCard(sight: Mocks.mocks[2]),
            ],
          ),
        ),
      ),
    );
  }
}
