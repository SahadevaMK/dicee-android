import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice =0;
  int rightDice = 0;
  void numberChange(){
    setState(() {
      rightDice = Random().nextInt(6)+1;
      leftDice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Dicee',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                     numberChange();
                    });
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                     numberChange();
                    });
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
