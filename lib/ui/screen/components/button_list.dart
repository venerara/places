import 'package:flutter/material.dart';

/// кнопка в виде иконки поверх картинок
class ButtonList extends StatelessWidget {
  const ButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        iconSize: (22.0),
        color: Colors.black,
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}
