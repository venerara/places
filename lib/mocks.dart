import 'dart:ffi';
import 'package:flutter/material.dart';

class PlaceName {
  final String name;
  final double lat;
  final double lon;
  final String url;
  final String details;
  final String type;
  final List mocks = [];

  PlaceName({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.details,
    required this.type,
  });
}

final List<PlaceName> mocks = [
  PlaceName(
    name: 'Водопад Атыш',
    lat: 54.55,
    lon: 57.27,
    url: 'https://uraloved.ru/images/mesta/bashkiriya/lemeza/atish-7.jpg',
    details:
        'Красивейший водопад Башкирии, выходящий из пещеры в скале и падающий со скалы в озеро. Водопад Атыш образовался благодаря выходу подземной реки. Вода источника поступает восходящим потоком с глубины 7 метров в грот пещеры и падает в озеро',
    type: 'Памятник природы',
  ),
  PlaceName(
    name: 'Пещера Шульган-Таш',
    lat: 53.02,
    lon: 57.03,
    url: 'https://uraloved.ru/images/mesta/bashkiriya/belaya/kapova-pesh-4.jpg',
    details:
        'Широкую известность пещере придали  около двухсот древних наскальных рисунков, выполненных красной охрой и углем. Возраст рисунков  – 14−14,5 тысяч лет, размер – от 44 до 112 сантиметров. Древние люди изобразили мамонтов, лошадей, других животных, антропоморфные фигуры. Слева от входа в пещеру – озеро глубиной более 80 метров',
    type: 'Памятник природы',
  ),
  PlaceName(
    name: 'Голубое озеро',
    lat: 54.35,
    lon: 55.87,
    url:
        'https://img.tourister.ru/files/2/3/0/7/8/3/1/3/clones/870_653_fixedwidth.jpg',
    details:
        'Голубое озеро, свое название оно получило за удивительный голубой цвет воды. Постоянная температура воды в озере не превышает 5−ти градусов, при этом оно не замерзает даже в лютые зимние морозы. На дне водоёма есть несколько воронок. Глубина самой большой из них - 5,5 м',
    type: 'Памятник природы',
  )
];
