import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavigationBar({Key? key, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline_sharp),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '',
        ),
      ],
      onTap: (currentIndex) {
        switch (currentIndex) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
          case 3:
            break;
        }
      },
    );
  }
}
