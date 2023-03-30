import 'package:test/test.dart';

class FlutterButton {
  FlutterButton({
    required this.text,
  }) : assert(text.isNotEmpty, 'Text can\'t be empty');

  final String text;
}

void main() {
  group('Given a FlutterButton', () {
    test('When created with an empty text, Then should throw AssertionError',
        () {
      expect(() => FlutterButton(text: ''), throwsA(isA<AssertionError>()));
    });

    test('When created with text not empty, should return normally', () {
      expect(() => FlutterButton(text: 'Hello, world!'), returnsNormally);
    });
  });
}
