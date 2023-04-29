void main(List<String> arguments) {
  if (arguments.length != 1) {
    print('❌ Usage: dart final_app.dart <filename>');
    return;
  }
  final word = arguments.first;
  print(word);
}
