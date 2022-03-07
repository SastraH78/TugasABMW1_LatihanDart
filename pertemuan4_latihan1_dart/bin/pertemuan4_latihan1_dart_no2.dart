import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Input angka : ");
  String? dtInput = stdin.readLineSync();
  int input = int.parse(dtInput!);
  var co = 1, co2 = input, coSatu = 1;

  // if (input >= 10) {
  //   co2 = coSatu;
  // }
  for (var i = input; i >= 1; i--) {
    //start
    for (var j = 1; j <= input; j++) {
      if (j <= i)
      {
        if (co >= 10) {
          co = 1;
        }
        stdout.write(co);
        co++;
        if (co >= input + 1) {
          co = 1;
        }
      }
      else
      {
        stdout.write(" ");
      }
    }
    for (var j = input; j >= 1; j--) {
      if (j <= i) {
        if (input >= 10) {
        }
        stdout.write(co2);
        co2--;
        if (co2 <= 0) {
          co2 = input;
        }
      } else {
        stdout.write(" ");
      }
    }
    print("");
  } //end
}
