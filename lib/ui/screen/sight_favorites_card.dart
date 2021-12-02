// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';
import 'package:places/ui/screen/res/colors.dart';

//Карточка для экрана Избранное в visiting_screen.dart
class SightFavotitesCard extends StatelessWidget {
  final String placeImage;
  final String placesName;
  final Color colorName;
  final String textAction;
  final IconData icon;

  const SightFavotitesCard(
      {Key? key,
      required this.placeImage,
      required this.placesName,
      required this.colorName,
      required this.textAction,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              _PlaceImage(
                placeImage: placeImage,
                icon: icon,
              ),
              _PlaceContent(
                placeName: placesName,
                colorName: colorName,
                textAction: textAction,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlaceImage extends StatelessWidget {
  final String placeImage;
  final IconData icon;
  const _PlaceImage({Key? key, required this.placeImage, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(colorWhiteGrey),
          strokeWidth: 0.7,
        ),
        Container(
          height: 150,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: ExactAssetImage('res/images/$placeImage.png'),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  AppStrings.placeType,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Icon(
                icon,
                color: colorWhite,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.close,
                color: colorWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlaceContent extends StatelessWidget {
  final String placeName;
  final Color colorName;
  final String textAction;

  const _PlaceContent({
    Key? key,
    required this.placeName,
    required this.colorName,
    required this.textAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 25, left: 20, right: 20),
        child: RichText(
          text: TextSpan(
            text: (placeName),
            style: Theme.of(context).textTheme.headline1,
            children: [
              TextSpan(
                text: textAction,
                style: TextStyle(color: colorName, fontSize: 14),
              ),
              TextSpan(
                text: (AppStrings.placeMode),
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
