import 'package:flutter/material.dart';

class GameProvider extends ChangeNotifier{
  List<String> _board= List.filled(9, '');
  String _currentPlayer='X';
  String _winner='';
  bool _gameOver=false;
  List<String>get board=>_board;
  get currentplayer=>_currentPlayer;
  get winner => _winner;
  get gameOver=> _gameOver;

    void makeMove(int index) {
    if (_board[index] == '' && !_gameOver) {
      _board[index] = _currentPlayer;
      _checkWinner();
    if(!_gameOver){
        _currentPlayer = _currentPlayer == 'X' ? 'O' : 'X';
    }
      notifyListeners();
    }
  }
  void _checkWinner(){
    final winningCombination=[
      [0,1,2],[3,4,5],[6,7,8]//ROW
     ,[0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
      [0, 4, 8], [2, 4, 6], // Diagonals
    ];

    for (final combination in winningCombination) {
        if (_board[combination[0]] != '' &&
          _board[combination[0]] == _board[combination[1]] &&
          _board[combination[0]] == _board[combination[2]]) {
        _winner = _board[combination[0]];
        
        _gameOver=true;
        notifyListeners();
        break;
    }
  }
     if (!_board.contains('')) {
      _winner = 'Draw';
      _gameOver=true;
      notifyListeners();
    }
    
}
 void resetGame() {
    _board = List.filled(9, '');
    _currentPlayer = 'X';
    _winner = '';
    _gameOver=false;
    notifyListeners();
  }}