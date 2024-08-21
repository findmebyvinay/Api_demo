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
          height: 100,
          width: 200),
          Center(
            child: Text('Lets Start the Game🕹️',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          const SizedBox(height:0,),
          Consumer<GameProvider>(
              builder: (context, gameProvider, child) {
                return Text(
                Provider.of<GameProvider>(context).winner != ''
                      ? 'Winner: ${ Provider.of<GameProvider>(context).winner}'
                      : 'Current Player: ${ Provider.of<GameProvider>(context).currentplayer}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 200,
              width: 400,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
                itemCount: 9,
                 itemBuilder:(context,index){
                   return AnimatedBuilder(animation:Provider.of<GameProvider>(context),
                    builder:(context,child){
                  return GestureDetector(
                    onTap: () =>Provider.of<GameProvider>(context, listen: false).makeMove(index),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                         Provider.of<GameProvider>(context).board[index],
                          style: const TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  );
                 });},),
            ),
          ),
           //  const SizedBox(height: 20,),
           

             IconButton(onPressed: (){
              Provider.of(context,listen: false).resetGame();
             },
              icon:Icon(Icons.games_outlined,
              size:20 ,))
          
        ],
      ),
    )
    );
  }
}