//4.1
import 'dart:io';
void main() async {

try{
  int n = int.parse(stdin.readLineSync()!);
  int a = 1;
  var nums = [];
  
  for(int i = 1; i< n; i++){
    if(i % 3 == 0){
      nums.add(i);
      a *= i;
    }
  }
  print(nums);
  print(a);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//4.2
import 'dart:io';
import 'dart:math';

void main() {
  final file = File ('numsTask2.txt');
  var text = file.readAsStringSync();
   List <String> list = [];
   List <int> listInt = [];
   int zero = 0;
   int count = 0;

list.add(text);
list = text.split(';');

for (int i = 0; i < list.length; i++){
   int number = int.parse(list[i]);
   listInt.add(number);
}

for (int i = 0; i < listInt.length; i++){
   if (listInt[i] == 0) {
    zero = i;
   break;
   }
}
for (int i = 0; i < zero; i++){
  stdout.write('${listInt[i]},   ');
  if (listInt[i] > 0) {
    count += listInt[i];
  }
}
print(count);
}


//4.3
import 'dart:io';
import 'dart:math';

void main() {
  final file = File('numsTask3.txt');
  var text = file.readAsStringSync();
  List<String> list = [];
  List<int> listInt = [];
  List<int> zero = [];
  int maxList = 0;
  int minList = 0;
  int indexZero = 0;
  int count = 0;
  list.add(text);
  list = text.split(',');

for (int i = 0; i < list.length; i++) {
   int number = int.parse(list[i]);
   listInt.add(number);
   }
for (int i = 0; i < listInt.length; i++) {
  if (listInt[i] == 0) {
      indexZero = i;
   break;
   }
   }
for (int i = 0; i < indexZero; i++) {
   int a = listInt[i];
   zero.add(a);
   }
   maxList = zero.reduce(max);
   minList = zero.reduce(min);
count = (maxList / minList).floor();
print(count);
}


//4.4
import 'dart:io';

void main() {
final file = File ('numsTask4.txt');
var text = file.readAsStringSync();
List<String> list = [];
List<int> listInt = [];
int count = 0;
list = text.split(' ');

for (int i = 0; i < list.length; i++) {
  int number = int.parse(list[i]);
  listInt.add(number);
}
for (int i = 0; i < listInt.length - 1; i++)    {
  if (listInt[i] == listInt[i + 1]) {
    count += 1;
  }
}
print(count);
}


//4.5
import 'dart:io';
void main () {

  try{
  print("X");
  int x = int.parse(stdin.readLineSync()!);
  print("Y");
  int y = int.parse(stdin.readLineSync()!);

  if (x > -1 && x < 3) {
    if (y > -2 && y < 4) {
      print("Принадлежит");
    } else {
      print("Не принадлежит");
    }
  } else {
    print("Не принадлежит");
  }
  }
  catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


//4.6
import 'dart:io';

void main() {
try {
  print("Введи a:");
  int a = int.parse(stdin.readLineSync()!);
  print("Введи b:");
  int b = int.parse(stdin.readLineSync()!);
  if ((a == 0) && ((b == 1) || (b == 0) || (b == -2)) || (((a == -1) || (a == 1)) && ((b == -1) || (b == -2)))) {
    print("Точка принадлежит.");
  }
  else {
    print(" не принадлежит.");
  }
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}


