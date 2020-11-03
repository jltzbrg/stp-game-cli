import 'dart:io';

void main() {
  stdout.write('Stein, Schere oder Papier? Drücke: (st/sch/pap) ');
  final input = stdin.readLineSync();
  print(input);
}
