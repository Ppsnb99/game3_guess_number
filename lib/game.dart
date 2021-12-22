import 'dart:math';

class Game{
  static const maxRandom = 100;
  int? _answer;
  int guessCount = 0;
  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }

  int doGuess(int num){
    //ทายถูก return 0
    //too high return 1
    //too low return -1
    guessCount++;
    if(num > _answer!){
      return 1;
    }else if (num < _answer!){
      return -1;

    }else{
      return 0;
    }

  }
}