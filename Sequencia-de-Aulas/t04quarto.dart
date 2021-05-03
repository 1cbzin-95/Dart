void main(){
  //switch case em dart
  String linguagem = "Java";
  switch(linguagem){
    case "DART":
      print("errou");
      break;
    case "Dart":
      print("Acertou miseravi");
      break;
    case "Java":
      print("Eita dor de cabeça");
      break;
    default:
      print("lascou");
  }
  //Estruturas de repetiçoes no Dart aula 20
  for(int i=0;i<10;i++){
    print(i);
  }
  int x = 0;
  while(x<9){
    print(x+5);
    x++;
  }

  //do while
  x=10;
  do{
    print(x+5);
    x++;

  }while(x<20);
}