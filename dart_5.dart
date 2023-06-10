//5.1

import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {


  var numstask1 = File("numsTask1.txt");
  var content = numstask1.readAsStringSync();
  List<String> nums = content.split(" ");
  int multiply = 1;
  int min = 999;
  int minIndex = 0;
  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) < min) {
      min = int.parse(nums[i]);
      minIndex = i;
    } else {
      continue;
    }
  }
  for (int i = minIndex; i < nums.length; i++) {
    multiply *= int.parse(nums[i]);
  }
  print(multiply);
}


//5.2

import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {  
  
try{
  var numstask2 = File("numsTask2.txt");
  var content = numstask2.readAsStringSync();
  List<String> nums = content.split(";");
  print(nums);
  bool isSorted = false;
  while (!isSorted) {
    isSorted = true;
    for (int i = 0; i < nums.length - 1; i++) {
      if (double.parse(nums[i]) > double.parse(nums[i + 1])) {
        var temp = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = temp;
        isSorted = false;
      }
    }
  }
  numstask2.writeAsStringSync(nums.toString());
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//5.3

import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {  

try{
  var numstask3 = File("numsTask3.txt");
  var content = numstask3.readAsStringSync();
  List<String> nums = content.split(';');
  print(nums);
  int min = 999;
  int minIndex = 0;
  int sum = 0;

  for (int i = 0; i < nums.length; ++i) {
    if (min > int.parse(nums[i])) {
      min = int.parse(nums[i]);
      minIndex = i;
    }
  }
  for (int i = 0; i < minIndex; i++) {
    sum += int.parse(nums[i]);
  }
  print(sum / minIndex);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//5.4

import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async { 

try{
  var numstask4 = File("numsTask4.txt");
  var content = numstask4.readAsStringSync();
  List<String> nums = content.split(';');
  int max = -999;

  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) > max) {
      max = int.parse(nums[i]);
    }
  }
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) == max - 1) {
      sum += int.parse(nums[i]);
    }
  }
  print(sum);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//5.5

import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async { 

try{
 var numstask5 = File("numsTask5.txt");
  var content = numstask5.readAsStringSync();
  List<String> nums = content.split(';');
  int maxIndex = 0;
  int max = -999;
  int minIndex = 0;
  int min = 999;

  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) > max) {
      max = int.parse(nums[i]);
      maxIndex = i;
    }
    if (int.parse(nums[i]) < min) {
      min = int.parse(nums[i]);
      minIndex = i;
    }
  }

  int counter = 0;
  int sum = 0;

  if (minIndex < maxIndex) {
    for (int i = minIndex + 1; i < maxIndex; i++) {
      sum += int.parse(nums[i]);
      counter++;
    }
  } else {
    for (int i = maxIndex + 1; i < minIndex; i++) {
      sum += int.parse(nums[i]);
      counter++;
    }
  }
  print(sum / counter);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}
