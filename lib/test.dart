import 'dart:io';
import 'dart:math';

void main() {
  var i = 1;
  var r = Random();
  var answer = r.nextInt(100);
  var w = true;
  // print('Random Number : ${answer}');
  print('╔════════════════════════════════════════════════════');
  print('║                  GUESS THE NUMBER                  ');
  print('╟────────────────────────────────────────────────────');
  do {
    stdout.write('║ Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess != null) {
      if (guess == answer) {
        print('║ ➜ $guess is CORRECT ❤,total guesses: $i');
        print('╟────────────────────────────────────────────────────');
        break;
      } else {
        if (guess >= answer) {
          print('║ ➜ $guess is TOO HIGH! ▲');
        } else {
          print('║ ➜ $guess is TOO LOW! ▼');
        }
        print('╟────────────────────────────────────────────────────');
        i++;
      }
    }
  } while (w == true);
  print('║                      THE END                       ');
  print('╚════════════════════════════════════════════════════');
}
