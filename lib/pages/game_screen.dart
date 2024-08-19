import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:const Text('TIC_TAC_TOE',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),),
      centerTitle: true,
    ),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('lib/assets/xo.json')
      ],
    )
    );
  }
}