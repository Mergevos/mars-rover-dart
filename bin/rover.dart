import 'dart:io';
import 'package:rover/rover.dart';

Rover? dartRover;
var program = false;

void main() {
  print(
      'Welcome to my mars rover kata program. My very first and basic program\n');
  dartRover = Rover('Mars Rover', 0, 0);
  print(
      'Rover ${dartRover!.name} has been created on coordinates ${dartRover!.x}, ${dartRover!.y}\n');
  print(
      'In order to move rover, use commands. To access commands, use /help\n');

  program = true;

  while (program == true) {
    String? initialPosition = stdin.readLineSync();
    dartMain(initialPosition);
  }
}

void dartMain(String? input) {
  switch (input) {
    case '/exit':
      {
        program = false;
        break;
      }
    case '/help':
      {
        print(
            '/east - Use in order to go eastly.\n/west - Use to go westly..\n/south - ...\n/north - you will not trust me, same as /south but for north');
        break;
      }
    case '/east':
      {
        dartRover!.move(Direction.east);
        print(
            'Rover ${dartRover!.name} has been moved. Its new position is: x: ${dartRover!.x}, ${dartRover!.y}');
        break;
      }
    case '/west':
      {
        dartRover!.move(Direction.west);
        print(
            'Rover ${dartRover!.name} has been moved. Its new position is: x: ${dartRover!.x}, ${dartRover!.y}');
        break;
      }
    case '/north':
      {
        dartRover!.move(Direction.north);
        print(
            'Rover ${dartRover!.name} has been moved. Its new position is: x: ${dartRover!.x}, ${dartRover!.y}');
        break;
      }
    case '/south':
      {
        dartRover!.move(Direction.south);
        print(
            'Rover ${dartRover!.name} has been moved. Its new position is: x: ${dartRover!.x}, ${dartRover!.y}');
        break;
      }
    default:
  }
}
