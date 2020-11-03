import 'dart:io';

enum Move {
  stein,
  schere,
  papier,
}
void main() {
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
    } else if (input == 'q') {
      break;
    } else {
      print('ungültige Eingabe');
    }
  }
}
