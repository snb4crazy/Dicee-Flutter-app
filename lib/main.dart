import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    var leftDiceNum = 1;
    var rightDiceNum = 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex sets the ratio to share space, default 1
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = 1;
                });
                print('Left button');
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Right button');
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
