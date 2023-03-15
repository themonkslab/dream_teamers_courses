import 'package:generic_classes/generic_classes.dart';

void main() {
  final simulatedResult = processRequest(returnError: true);
  throw (simulatedResult.error!);
  // print(simulatedResult.value is String);
}
