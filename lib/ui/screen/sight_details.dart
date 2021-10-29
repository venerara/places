import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottonNavigationBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                color: Colors.greenAccent,
                alignment: FractionalOffset(0.1, 0.1),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  color: Colors.white,
                  child: Icon(Icons.arrow_back_ios_new_rounded),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Пряности и радости\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          children: [
                            TextSpan(
                              text: 'ресторан',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: '    закрыто до 09:00',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Кавказские пряности и европейские радости не оставят вас равнодушными. Приготовленные по традиционным грузинским рецептам аджапсандал, несколько видов  хачапури, харчо, лобио и хинкали соседствуют с главными хитами европейской кухни, авторскими блюдами от шеф-повара и великолепными десертами от нашего шеф-кондитера!',
                        softWrap: true,
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Row(children: [
                          SizedBox(height: 40, width: 25),
                          Icon(Icons.directions_bus),
                          Text("ПОСТРОИТЬ МАРШРУТ"),
                        ]),
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottonNavigationBar extends StatelessWidget {
  const CustomBottonNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black87,
      currentIndex: 1,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.date_range),
          title: Text('Запланировать'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text('В избранное'),
        ),
      ],
    );
  }
}
