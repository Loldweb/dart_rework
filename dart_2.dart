//2.1
void main() {
 
  int a = 300;
  var nums = List.filled(100, a);

  for (int i = 0; i < nums.length; i++){
    a = a - 3;
    nums[i] = a;
  }
  print(nums);
}


//2.2
void main() {
 
  int a = 1;
  var nums = List.filled(15, a);

  for (int i = 1; i < nums.length; i++){
    a = a + 2;
    nums[i] = a;
  }
  print(nums);
}


//2.3
import 'dart:io';

void main() {
  int n = 5;

  var listNums = List.generate(n, (i) => List.generate(n, (j) => 1));

  for (int i = 1; i < listNums.length; i++) {
    for (int j = 1; j < listNums.length; j++) {
      listNums[i][j] = 0;

      if (listNums[i][j] == 0) {
        listNums[i][j] = 1;
      }
      listNums[i][j] = listNums[i - 1][j] + listNums[i][j - 1];
    }
  }

  for (int i = 0; i < listNums.length; i++) {
    for (int j = 0; j < listNums.length; j++) {
      stdout.write("${listNums[i][j]}  ");
    }
    print("");
  }
}


//2.4
import 'dart:math';
void main() {
  double average = 0;
  var listAverage = [];

  var temperature = List.generate(12, (int index) => List.generate(30, (int index) => Random().nextInt(40) - 20, growable: false), growable: false);
  for (int i = 0; i < 12; i++){
    print(temperature[i]);
    average += temperature [i] [i]; 
    listAverage.add(average);
  }
  FAverage(temperature);
}

void FAverage (var List){
  double average = 0;
  var listAverage = [];

  for (int i = 0; i < 12; i++){
    average += List [i] [i]; 
    listAverage.add(average);
  } 
  listAverage.sort();
  print(listAverage);
}


//2.5
import 'dart:math';
import 'dart:core';

void main() async {
  Map map = {
    "Январь": List.generate((30), (j) => Random().nextInt(5) - 35),
    "Февраль": List.generate((30), (j) => Random().nextInt(5) - 30),
    "Март": List.generate((30), (j) => Random().nextInt(10) - 5),
    "Апрель": List.generate((30), (j) => Random().nextInt(10) + 5),
    "Май": List.generate((30), (j) => Random().nextInt(10) + 5),
    "Июнь": List.generate((30), (j) => Random().nextInt(20) + 15),
    "Июль": List.generate((30), (j) => Random().nextInt(20) + 15),
    "Август": List.generate((30), (j) => Random().nextInt(20) + 15),
    "Сентябрь": List.generate((30), (j) => Random().nextInt(5) + 10),
    "Октябрь": List.generate((30), (j) => Random().nextInt(5) + 10),
    "Ноябрь": List.generate((30), (j) => Random().nextInt(5) - 7),
    "Декабрь": List.generate((30), (j) => Random().nextInt(1) - 20)
  };
  sred(map);
}

Map sred(map) {
  var otvet = {
    'Январь': 0,
    "Февраль": 0,
    'Март': 0,
    'Апрель': 0,
    'Май': 0,
    'Июнь': 0,
    'Июль': 0,
    'Август': 0,
    'Сентябрь': 0,
    'Октябрь': 0,
    'Ноябрь': 0,
    'Декабрь': 0
  };
  for (var key in map.keys) {
    double sum = 0;
    for (int i = 0; i < 30; i++) {
      sum += map[key][i];
    }
    otvet[key] = (sum ~/ 30);
  }
  for (var item in otvet.entries) {
    print("${item.key} - ${item.value}");
  }
  return otvet;
}

