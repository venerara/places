import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: _PlaceImage(
              placeImage: sight.url,
              placesType: sight.type,
            ),
          ),
          Expanded(
            child: _PlaceContent(
              placesName: sight.name,
              placeDetails: sight.details,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlaceImage extends StatelessWidget {
  final String placeImage;
  final String placesType;

  const _PlaceImage(
      {Key? key, required this.placeImage, required this.placesType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
          strokeWidth: 0.7,
        ),
        Container(
          height: 170,
          width: double.infinity,
          padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 15.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(placeImage),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 9,
                child: Text(
                  placesType,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.favorite_border_outlined,
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
  final String placesName;
  final String placeDetails;
  const _PlaceContent(
      {Key? key, required this.placesName, required this.placeDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(20.0),
      alignment: Alignment.topCenter,
      child: RichText(
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: (placesName),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          children: [
            TextSpan(
              text: ('\n' + placeDetails),
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
