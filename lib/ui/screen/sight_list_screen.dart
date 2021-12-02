import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/components/appbar_custom.dart';
import 'package:places/ui/screen/components/bottomnavigationbar_custom.dart';
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
    final List<Widget> textfield = mocks
        .map(
          (Sight sight) => SightCard(
            sight: sight,
          ),
        )
        .toList();

    return Scaffold(
      appBar: const CustomAppBar(title: AppStrings.titleAppBar, height: 70.0),
      body: SingleChildScrollView(
        child: Column(
          children: textfield,
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 5,
      ),
    );
  }
}
