import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  int count = 0;

  void incrementcount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SightCard(
                name: 'Водопад Атыш',
                lat: 54.87,
                lon: 55.27,
                url:
                    'https://uraloved.ru/images/mesta/bashkiriya/lemeza/atish-7.jpg',
                details:
                    'Красивейший водопад Башкирии, выходящий из пещеры в скале и падающий со скалы в озеро. Водопад Атыш образовался благодаря выходу подземной реки. Вода источника поступает восходящим потоком с глубины 7 метров в грот пещеры и падает в озеро',
                type: 'памятник природы',
              ),
              SightCard(
                name: 'Пещера Шульган-Таш',
                lat: 53.02,
                lon: 57.03,
                url:
                    'https://uraloved.ru/images/mesta/bashkiriya/belaya/kapova-pesh-4.jpg',
                details:
                    'Широкую известность пещере придали  около двухсот древних наскальных рисунков, выполненных красной охрой и углем. Возраст рисунков  – 14−14,5 тысяч лет, размер – от 44 до 112 сантиметров. Древние люди изобразили мамонтов, лошадей, других животных, антропоморфные фигуры. Слева от входа в пещеру – озеро глубиной более 80 метров',
                type: 'памятник природы',
              ),
              SightCard(
                name: 'Голубое озеро',
                lat: 54.35,
                lon: 55.87,
                url:
                    'https://img.tourister.ru/files/2/3/0/7/8/3/1/3/clones/870_653_fixedwidth.jpg',
                details:
                    'Голубое озеро, свое название оно получило за удивительный голубой цвет воды. Постоянная температура воды в озере не превышает 5−ти градусов, при этом оно не замерзает даже в лютые зимние морозы. На дне водоёма есть несколько воронок. Глубина самой большой из них - 5,5 м',
                type: 'памятник природы',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(70.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "Список\nинтересных мест",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
        maxLines: 2,
      ),
    );
  }
}
