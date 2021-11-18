import 'package:flutter/material.dart';
import 'package:places/ui/res/appstrings.dart';

//Карточка для экрана Избранное в visiting_screen.dart
class SightCard1 extends StatelessWidget {
  final String placeImage;
  final String placesName;
  final Color colorName;
  final String textAction;
  final IconData icon;

  SightCard1(
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
          valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
          strokeWidth: 0.7,
        ),
        Container(
          height: 150,
          width: double.infinity,
          padding: EdgeInsets.only(left: 20.0, top: 20.0),
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
              const Expanded(
                flex: 9,
                child: Text(
                  AppStrings.placeType,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              const Expanded(
                flex: 1,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
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

  _PlaceContent({
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
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 25, left: 20, right: 20),
        child: RichText(
          //overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: (placeName),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: ('\n' + textAction + '\n' + '\n'),
                style: TextStyle(color: colorName, fontSize: 14),
              ),
              TextSpan(
                text: (AppStrings.placeMode),
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
