import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class GameView extends StatelessWidget {
  GameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(87, 196, 229, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(87, 196, 229, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed('/EditDeckView');
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          color: Colors.white,
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: Center(child: FlashcardFront()),
    );
  }
}

int counterIsCorrect = 0;
int counterIsWrong = 0;

class FlashcardFront extends StatelessWidget {
  @override
  Widget build(BuildContext screen) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Color.fromRGBO(87, 196, 229, 1),
                width: 200,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'sdad',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(height: 50),
                ],
              ),
            ]),
        FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Texto aaaaaa',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 78),
                  ],
                ),
              ],
            ),
            back: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Texto costaaaaa',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 50),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: ElevatedButton(
                        child: Text("Yes Yes Yes Yes Yes"),
                        onPressed: () {
                          counterIsCorrect++;
                          print(counterIsCorrect);
                        },
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                      child: ElevatedButton(
                        child: Text("No No No No No No"),
                        onPressed: () {
                          counterIsWrong++;
                          print(counterIsWrong);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
