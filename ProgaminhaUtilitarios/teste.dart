import 'dart:io';
void main(){
  print("Digite uma frase: ");
  var input = stdin.readLineSync();
  String frase = input.toString();
  print(frase);

}