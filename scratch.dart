import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  task2().then((result) {
    task3(result);
  });
  task3('no result');
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 2);

  String result;

  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  print('Task 3 complete $task2Data');
}
