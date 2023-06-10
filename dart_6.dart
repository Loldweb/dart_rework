//6.1

import 'dart:io';
void main()  {

try{
  var count = [];
  final file = File('numsTask1.txt');
  var text = file.readAsStringSync();
  
  List<String> nums = text.split(" ");
  print(nums);

  for(int i = 0; i<nums.length;i++){
    var parts = nums[i].split(' ');
    var txtCount = parts[0].length;
    if(txtCount % 2 != 0){
      count = parts;
    }
  print(count);
  }
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//6.2

import 'dart:io';

void main() {
  final file = File('numsTask2.txt');
  var text = file.readAsStringSync();
  String mass = " ";

  for (int i = 0; i < text.length; i++) {
  if(text[i] == (""));{
    mass = text[i];
  }
  print(mass);
  }
}


//6.3

import 'dart:io';
import 'dart:core';

void main() {

try{
  int a = 57;
  if(a % 2 == 0 || a % 10 == 0){
    print("Число четное и кратно 10");
  }
  else{
    print("Число либо нечетное, либо некратно 10");    
  }
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//6.4

import 'dart:io';
import 'dart:core';
void main() {
  int a = 2;
  int c = 0;

  for(int i = 0; i < 999; i++){
  int b = int.parse(stdin.readLineSync()!);
    if(b >= 0){
      if(b % a == 0){
        c += b;
      }
    }
    else{
      break;
    }
  }
}


//6.5 
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {


try{
  int n = int.parse(stdin.readLineSync()!);
  int m = int.parse(stdin.readLineSync()!) - 1;

  Random random = new Random();
  List<List<int>> matrix = [];

  for (int i = 0; i < n ; i++) {
    matrix.add([]);
    for (int j = 0; j < m ; j++) {
      matrix[i].add(random.nextInt(2));
    }
  }
  for (int i = 0; i < n; i++) {
  int a = 0;
    for (int j = 0; j < m; j++) {
  if (matrix[i][j] == 1) {
  a++;
      }
    }
  if (a % 2 == 0) {
  matrix[i].add(0);
  } else {
  matrix[i].add(1);
    }
  }

  for (int i = 0; i < n; i++) {
  for (int j = 0; j < matrix[i].length; j++) {
  stdout.write("${matrix[i][j]} ");
    }
  print("");
  }
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//6.6

import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

  Random random = Random();
  List<double> originList = [];

  for (int i = 0; i < 20; i++) {
    originList.add((random.nextInt(200) - 100).toDouble());
  }

  List<double> plusList = [];
  List<double> minusList = [];

  for (int i = 0; i < originList.length; i++) {
    if (originList[i] >= 0) {
      plusList.add(originList[i]);
    } else {
      minusList.add(originList[i]);
    }
  }

  print("Положительные - ${plusList}");
  print("Отрицательные - ${minusList}");

}

