import 'package:api_demo/provider/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

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
    body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('lib/assets/xo.json',
          height: 200,
          width: 400),
          Center(
            child: Text('Lets Start the Game🕹️',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
            itemCount: 9,
             itemBuilder:(context,index){
               return Consumer<GameProvider>(
            builder: (context, gameProvider, child) {
              return GestureDetector(
                onTap: () => gameProvider.makeMove(index),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      gameProvider.board[index],
                      style: const TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              );
             });},)
          
        ],
      ),
    )
    );
  }
}