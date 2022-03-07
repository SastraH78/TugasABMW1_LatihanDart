import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Input angka : ");
  String? dtInput = stdin.readLineSync();
  int input = int.parse(dtInput!);
  print("");

  int star = input ~/ 2;
  int temp = input ~/ 2;
  int jum = 1, co = 1, counter = 1;

  for (var i = 0; i < input; i++) {
    if (i < temp) {
      if (co >= 10) {
        co = 1;
      }
      for (var j = 0; j < star; j++) {
        stdout.write("*");
      }
      for (var z = 0; z < jum; z++) {
        if (z % 2 == 1) {
          stdout.write(" ");
        } else {
          stdout.write(co);
        }
      }
      for (var j = 0; j < star; j++) {
        stdout.write("*");
      }
      star -= 1;
      jum += 2;
      co += 1;
      counter += 1;
    } 
    else {
      if (co >= 10) {
        co = 1;
      }
      for (var j = 0; j < star; j++) {
        stdout.write("*");
      }

      for (var z = 0; z < jum; z++) {
        if (z % 2 == 1) {
          stdout.write(" ");
        } else {
          stdout.write(co);
        }
      }

      for (var j = 0; j < star; j++) {
        stdout.write("*");
      }
      star += 1;
      jum -= 2;
      co += 1;
    }
    print("");
  }
  print("");
}
