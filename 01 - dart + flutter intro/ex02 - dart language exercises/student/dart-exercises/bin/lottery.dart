// were runnningthis directly as a program so i need a main()
// i need some sor of function that returns a list<int> of lottery numbers

import 'dart:io';
import 'dart:math';

void main() {
  print("please enter how lotto numbers are in the series");
 int count = int.parse(stdin.readLineSync()!);// tells compiler, trust me bro the wont be null - nopt best pratice but for exmaple
 print("what is the largest lotto number (inclusively)");
 int largestNum = int.parse(stdin.readLineSync()!);

 //number generation logic
 List<int> lotteryNumbers = List.filled(count, 0);
 Random rng = Random(); 

 for (int i = 0; i < count; i++ )
 {
    int value = rng.nextInt(largestNum) + 1;
    while (lotteryNumbers.contains(value)) {
      print("ERRRRRROR");
    }
    lotteryNumbers[i] = value;
 }
 print("Your lottery numbers are: $lotteryNumbers");
}
