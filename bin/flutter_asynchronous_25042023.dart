import 'dart:async';

void main(List<String> arguments) {
  // Khai bao Future
  // 1: Delay

  // Future<String> future = Future.delayed(Duration(seconds: 2), () {
  //   throw Exception("Loi");
  // });

  // Hứng giá trị và lỗi
  // future.then((value) => print("Value $value"))
  //      .catchError((error) => print("Error $error"));

  var numberA = 5;
  var numberB = 10;

  handle(numberA, numberB)
  .then((total) => print(total));
}

Future<int> plus(int a, int b) {
  return Future.delayed(Duration(seconds: 1), () {
    return a + b;
  });
}

Future<int> minus(int a, int b) {
  return Future.delayed(Duration(seconds: 1), () {
    return a - b;
  });
}

Future<int> handle(int numberA, int numberB) {
  Completer<int> completer = Completer();

  Future.delayed(Duration(seconds: 5), () {
    completer.complete(numberA + numberB);
  });

  return completer.future;
}
