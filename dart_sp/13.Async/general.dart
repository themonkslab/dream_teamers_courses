import 'dart:async';

void main() async {
  final controller = StreamController<int>();
  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.add(4);

  await controller.stream
      .map((event) => event * 2)
      .where((event) => event > 2)
      .forEach((print));

  controller.stream.listen((event) {
    print(event);
  });

  controller.stream.listen((event) {
    print(event * 10);
  });
}
