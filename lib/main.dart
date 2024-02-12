
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp()

  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          title: const Text(' Rolling Dicee',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal,
        ),
        body: Dicepage(),
      ),
    );
  }
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  _DicepageState createState() => _DicepageState();
}


class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 1 ;
  int rightDiceNumber = 1 ;

  void ChangeDiceValue(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1 ;
      rightDiceNumber = Random().nextInt(6) + 1 ;

    });
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                    onTap: (){
                      ChangeDiceValue();

                    },
                    child: Image.asset('assets/dice$leftDiceNumber.png')),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                    onTap: (){
                      ChangeDiceValue();


                    },
                    child: Image.asset('assets/dice$rightDiceNumber.png')),
              )
          )
        ],
      ),
    );
  }
}
