import 'dart:io';
import 'dart:core';

// void main(List<String> arguments) {
//  print("Palindrome");
//  print('Masukkan angka atau huruf :');
//     String original =  stdin.readLineSync();

//    //penggunaan string? reverse untuk membalikkan data
//    String reverse = original.split('').reversed.join('');
//   // membandingkan data antara
//   if(original == reverse)
//   {
//     print(' Palindrome');
//   }else{
//     print(' Not Palindrome');
//   }
// }

// int nilaiawal;
// int nilaiakhir;
// void main(List<String> arguments){
//  print ("Leap Year");
//   print("Masukkan tahun a : ");
//   int q= int.parse(stdin.readLineSync());
//   print("Masukkan tahun b : ");
//   int p = int.parse(stdin.readLineSync());
//   print("Hasil");
//   if (q>p){
//     nilaiawal=p;
//     nilaiakhir=q;
//   }
//   else{
//     nilaiawal=q;
//     nilaiakhir=p;
//   }
//   for (int year = nilaiawal; year < nilaiakhir ; year++){
//     if ((year % 4 == 0) && (year % 100!=0) || (year%400 ==0)){
//       print (year);
//     }}
// }

// 


// void main(List<String> arguments) {
//   print("Masukkan Kalimat");
//   String words = stdin.readLineSync();
//   List splitWord = words.split(' ');

//   for (int i = 0; i < splitWord.length; i++) {
//     String element = splitWord[i];
//     String firstChar = element[0];
//     String isFirstCharCapital = element[0].toUpperCase();
//     if (firstChar == isFirstCharCapital) {
//       element = element.toLowerCase();
//       element = element.split('').reversed.join('');
//       element = element[0].toUpperCase() + element.substring(1);
//     }else{
//        element = element.split('').reversed.join('');
//     }
//     splitWord[i] = element;
//     // if(firstChar == isFirstCharCapital)
//   }
//   String hasil = splitWord[0];
//   for (int i = 1; i < splitWord.length; i++) {
//     hasil = hasil + " " + splitWord[i];
//   }

//   // print("Kalimat :");
//   // print(words);
//   print("Hasil :");
//   print(hasil);
// }


// void main(List<String> arguments) {
//   Fibonacci task =new Fibonacci();
//   var num = [15, 1, 3].reduce((a, b) => a + b);
//   print("[15,1,3] = $num ");

//   task.nearestFibonacci(num);
// }

// class Fibonacci {
// int minValue(int first,int second){
//   if (first<second){
//     return first;
//   }return second;
// }

// void nearestFibonacci(int num) {
//   int first = 0, second = 1;
//   var third = first + second;

//   while (third <= num) {
//     first = second;
//     second = third;
//     third = first + second;
//   }
//   int min = minValue(num-first,num-second);
//   if (min == num - first){
//     min= first;
//   }else 
//   {
//     min=second;
//   }
//   if ((third-num) < (third-min)){
//     min = third;
//   }
//   print("Hasil : $min ");
 
// }
// }


// var number = int.parse(stdin.readLineSync());
// void main(List<String> arguments){
//   print("Fizzbuzz");
//   var simpan = [];
//   for(var b=1; b<=number; b=b+1){
//     if(((b%3)==0) && ((b%5)==0) ){
//      simpan.add("FIZZBUZZ");
//     }
//     else if ((b%3)==0){
//       simpan.add("FIZZ");
//     }
//     else if ((b%5)==0){
//       simpan.add("BUZZ");
//     }else{
//       simpan.add(b);
//     }
//   }
//   print(simpan);
// }


void main(List<String> arguments){
  print("Reverse Words");
  print('Masukkan Kalimat :');
  String words  =  stdin.readLineSync();
  var splitWords = words.split(" ");
  var hasil = [];
  
  splitWords.forEach((element) {
    var reversedWord = element.toLowerCase().split(" ").reversed;
    // element= element.split("") as String;
    // for(var i=0;i<element.length; i++)
    // {
    //   // if(element[i]==element[i].toUpperCase()) 
    //   // reversedWord[i] =reversedWord[i].toUpperCase();
    // }
    // hasil.reversed.join('');
    print(reversedWord);
  });

  // var reversed = [];
  // String words =  stdin.readLineSync();
  // String hasil;
  //  var reverse = words.split(' ');
  //  reverse.forEach((element) {
  //    reversed.add(element.split('').reversed.join(''));
  //  });
  // hasil = reversed.join(' ');

  // print("Hasil :");
  // print(hasil);

}








