//1.1
import 'dart:math';

void main() {
  List<int> numbers = List.generate(10, (_) => Random().nextInt(100));
  print(numbers);
  int minIndex = numbers.indexOf(numbers.reduce(min));
  print("Min: $minIndex");
}

//1.2
import 'dart:io';

void main() {
  List<int> numbers = [];
  int input;
  try {
    do {
      stdout.write("In num or 0 to end: ");
      input = int.parse(stdin.readLineSync()!);
      if (input != 0) {
        numbers.add(input);
      }
    } while (input != 0);

    int sum = numbers.reduce((a, b) => a + b);
    int product = numbers.reduce((a, b) => a * b);
    double average = sum / numbers.length;

    print("Sum: $sum");
    print("multi: $product");
    print("average: $average");
  } catch (e) {
    print("Err");
  }
}

//1.3
import 'dart:io';
void main() {
var words = [];
String word = " ";
int minIndex = 0;
int maxIndex = 0;
int index = 0;

int minLength = 99;
int maxLength = 0;

  while (word != ""){
    word = stdin.readLineSync()!;
    words.add(word);

    if (word.length < minLength && word.length != 0){
      minLength = word.length;
      minIndex = index;
    }
    if (word.length > maxLength && word.length != 0){
      maxLength = word.length;
      maxIndex = index;
    }
    index++;
  }
  print("Min: ${words[minIndex]}, Max : ${words[maxIndex]}");
}


//1.4
import 'dart:io';
import 'dart:math';

void randomNum(int min, int max) {
  try {
    var num = [];
    Random rnd = Random();

    for (int i = 0; i < 10; i++) {
      num.add(rnd.nextInt(max - min) + min);
    }
    for (int i in num) {
      print(i);
    }
  } catch (e) {
    print("ERR");
  }
}

void main() {
  int min = int.parse(stdin.readLineSync()!);
  int max = int.parse(stdin.readLineSync()!);
  randomNum(min, max);
}


//1.5
import 'dart:io';

void main() {
  try {
    String a = stdin.readLineSync()!;
    var b = a.split(" ");
    print(b.length);
    print("Start $a End");
  } catch (e) {
    print("$e");
  }
}

