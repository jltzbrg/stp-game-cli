import 'dart:io';
import 'dart:math';

enum Move {
  stein,
  schere,
  papier,
}
void main() {
  final randomNumberGenerator = Random();
  while (true) {
    stdout.write('Stein, Schere oder Papier? Drücke: (st/sch/pap) ');
    final input = stdin.readLineSync();
    if (input == 'st' || input == 'sch' || input == 'pap') {
      var playerMove;
      if (input == 'st') {
        playerMove = Move.stein;
      } else if (input == 'sch') {
        playerMove = Move.schere;
      } else {
        playerMove = Move.papier;
      }
      final random = randomNumberGenerator.nextInt(3);
      final aiMove = Move.values[random];
      print('Du spielst: $playerMove');
      print('AI spielt: $aiMove');
      if (playerMove == aiMove) {
        print('Unentschieden');
      } else if (playerMove == Move.stein && aiMove == Move.schere ||
          playerMove == Move.papier && aiMove == Move.stein ||
          playerMove == Move.schere && aiMove == Move.papier) {
        print('Du hast gewonnen');
      } else {
        print('Du hast verloren');
      }
      print('Gewählt: $input');
    } else if (input == 'q') {
      break;
    } else {
      print('ungültige Eingabe');
    }
  }
}
