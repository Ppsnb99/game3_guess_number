// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'game.dart';

void main() {
  const maxRandom = 100;
  var game = Game();

  var isCorrect = false;
  var check = false;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {

    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      stdout.write('║ ➜ $guess is CORRECT ❤, total guesses: ');
      print(game.guessCount);
      print('╟────────────────────────────────────────');
      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
      isCorrect = true;
    }
  } while (!isCorrect);
   while (true){
     stdout.write('Play again? (Y/N): ');
     var again = stdin.readLineSync();
     if(again == 'Y' || again == 'y'){
       check = true;
     }else if (again == 'N' || again == 'n'){
       check = false;
       break;
     }else{
       continue;
     }
   }

}
