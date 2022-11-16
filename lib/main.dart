import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int deeGauche = 1;
  int deeDroit = 1;

  void rechargerDee() {
    setState((){
      deeGauche = Random().nextInt(6) + 1;
      deeDroit = Random().nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              "Jeux de Dees",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      print("Dee de Gauche");

                      rechargerDee();
                    },
                    child: Image(
                      image: AssetImage('images/dice$deeGauche.png'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      print("Dee de droite");
                      rechargerDee();
                    },
                    child: Image(
                      image: AssetImage('images/dice$deeDroit.png'),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
