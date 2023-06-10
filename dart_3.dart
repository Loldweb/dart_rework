//3.1

import 'dart:io';

void main() {
  try {
    final file = File('bin/nums.txt');
    var text = file.readAsStringSync();

    List<String> nums = text.split(" ");
    print(nums);

    int i = 0;
    while (i < nums.length) {
      if (int.parse(nums[i]) % 2 == 0) {
        nums.removeAt(i);
      } else {
        i++;
      }
    }
    print(nums);

    file.writeAsStringSync(nums.join(" "));
  } catch (e) {
    print("$e");
  }
}
//3.2
import 'dart:io';

void main() {
 
  var file = File('nums.txt');
  var contents = file.readAsStringSync();
  var numbers = contents.split(' ');
  numbers.removeWhere((number) => int.parse(number) % 2 == 0);
  var result = numbers.join(' ');
  file.writeAsStringSync(result);

  print('Четные числа удалены.');
}

//3.3

import 'dart:io';
void main() {

final file = File ('numsTask3.txt');
var text = file.readAsStringSync();
List<String> list = [];
List <int> height = [];

int count = 0;

int square = 0;

list.add(text);
list = text.split(" ");

for (int i = 0; i < list.length; i++) {
  int number = int.parse(list[i]);
  height.add(number);
}

for (int i = 0; i < height.length; i++) { 
  for (int j = 0; j < height.length; j++) { 
    if (height[i] > height[j]) {
      if (i >= j) {
        square = height[j] * (i - 5);
      }
      else {
      square = height[j] * (j - i);
      }
    }
  }
  if (count < square) {
    count = square;
  }
  square = 0;
}

print(height);
print(count);
}
4.1
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


