import 'dart:io';

void printResult(bool value) async {
  if (value == true) {
    print('\nYou have a table! 🥳');
  } else {
    print('\nYou don\'t have a table! 😋');
  }
  // Hago una pausa de 1 segundo para mostrar la despedida
  await Future.delayed(
      Duration(seconds: 1), () => print('Thanks for coming! 🤗'));
}

void main() async {
  // Instancio el objeto de la capa de negocio
  // y a su vez le paso el objeto de la capa de repositorio y a este,
  // el objeto de la capa de datos
  BusinessLogicObjectLayer businessLogicObjectLayer = BusinessLogicObjectLayer(
    repository: RepositoryLayer(
      data: DataLayer(),
    ),
  );

  // Empezamos con el 'diseño de la vista'
  // Recibo al usuario y le pregunto cuántas personas son
  stdout.write('Welcome to our restaurant! 🍽️\nHow many people are you? ');
  int diners = int.parse(stdin.readLineSync()!);

  // Esta variable la uso para mostrar el estado de carga
  // y lo hago fuera ya que si lo hiciera dentro del listen
  // se reiniciaría cada vez que se emita un nuevo evento
  // y el while se ejecutaría infinitamente
  var isLoading = false;

  // Llamo al método de la capa de negocio
  // y reacciono según los estados que esta me devuelva
  businessLogicObjectLayer.doWeHaveTable(diners).listen((event) async {
    if (event == BLoCStates.loading) {
      stdout.write('Checking if we have a table for you');
      isLoading = true;
    } else if (event == BLoCStates.success) {
      stdout.write('\nThe operation has been processed successfully');
      isLoading = false;
    } else {
      isLoading = false;
      printResult(await event as bool);
    }
    while (isLoading == true) {
      stdout.write('.');
      await Future.delayed(Duration(seconds: 1));
    }
  });
}

// BLoC significa Business Logic Component y en este enum
// definimos los estados que puede tener la capa de negocio
enum BLoCStates {
  loading,
  success,
  error,
}

class BusinessLogicObjectLayer {
  // Recibo el objeto de la capa de repositorio
  // en el constructor de la capa de negocio
  BusinessLogicObjectLayer({required this.repository});
  final RepositoryLayer repository;

  // Retorno un Stream<Object> porque en este caso
  // necesito devolver el estado y el resultado de la operación
  Stream<Object> doWeHaveTable(int diners) async* {
    yield BLoCStates.loading;
    Object table = await repository.doWeHaveTable(diners);
    yield BLoCStates.success;
    yield table;
  }
}

class RepositoryLayer {
  RepositoryLayer({required this.data});
  final DataLayer data;

  Future<bool> doWeHaveTable(int diners) async {
    return await data.doWeHaveTable(diners);
  }
}

class DataLayer {
  Future<bool> doWeHaveTable(int diners) async {
    // Va a simular que la base de datos tarda 5 segundos en responder
    await Future.delayed(Duration(seconds: 5));
    if (diners <= 4) {
      return true;
    } else {
      return false;
    }
  }
}
