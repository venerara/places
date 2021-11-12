import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  CustomAppBar({
    Key? key,
    required this.title,
    required this.height,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
        maxLines: 2,
      ),
    );
  }
}
