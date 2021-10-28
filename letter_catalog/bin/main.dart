import 'dart:io';


void main(List<String> arguments) {
//   List<String> latter = ['Apple','Avocado','Banana','Blackbarries','Blueberries','Cherries'];
 print("Masukkan kata?");
 String ?inputlatter= stdin.readLineSync();
 List<String> kosong =[' '];
 List<String> latter_catalog = ['Apple','Avocado','Banana','Blackbarries','Blueberries','Cherries'];
 const String letter = 'A';
 final List<String> result =[];

 for (int i=0; i<latter_catalog.length;i++){
   String firstFruit= latter_catalog[i].substring(0,1);
   print("First Fruit ${latter_catalog[i]} : $firstFruit");
   if(firstFruit == inputlatter){
     result.add(latter_catalog[i]);
   }else{
     result.add("");
   }
 }
 print("Hasil: $kosong");
}
