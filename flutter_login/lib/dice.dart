import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Dice Game'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset('images/dice1.png')),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Image.asset('images/dice2.png')),
                ],
              ),
            ),
            SizedBox(height: 60,),
            ButtonTheme(
                minWidth: 100,
                height: 60,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orangeAccent,
                  child: Icon(Icons.play_arrow, color: Colors.white, size: 50,),
                ))
          ],
        ),
      ),
    );
  }
}
