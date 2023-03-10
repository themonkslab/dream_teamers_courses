# Implementando el loop

Ya aprendimos c贸mo capturar _input_ del usuario. Ahora, tenemos que implementar la l贸gica b谩sica de nuestro juego: el _loop_.

Sabemos que necesitamos se ejecute de forma indefinida hasta que el usuario ingrese una tecla para salir del juego. Qu茅 conocen para hacer esto? 馃拃 Prueben implementar un loop infinito; pueden salir de 茅l utilizando la combinaci贸n `cmd/ctrl + c`. Se ver铆a as铆:

```dart
import 'dart:io';

void main() {
  while(true) {
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    print(userInput); 
    // recuerden utilizar `cmd/ctrl + c` para salir del loop       
  }
}
```

Bien! Esto no es muy 煤til pero sirvi贸 para mostrarles c贸mo podemos __cortar la ejecuci贸n de un programa en la _command line_.__ Ahora vamos a implementar la l贸gica que queremos. 馃拃 Nuevamente, intenten ustedes implementar el _loop_ desde el _pseudo code_ que hab铆amos escrito:

```dart
import 'dart:io';

void main() {
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      print('Selected: $userInput');
    } else if (userInput == 'q') {
      print('I hope you enjoyed the game! 馃槂');
      break;
    } else {
      print('Invalid input! 馃槼');
    }
  }
}
```

Deber铆an ver algo como esto:

![_Loop_ implementado](https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/5.8.1_loop_implementado.gif)
