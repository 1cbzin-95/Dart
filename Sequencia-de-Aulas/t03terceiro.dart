// EStruturas de tomada de Decisão utilizando dart 

void main(){
  double nota = 5 ;
  if(nota>=7){
    print("passou");
  }
  else if((nota <= 5) && (nota <=7)){
    print("Passou se arrastando");
  }
  else {
    print("não passou");
  }
  //Operdor ternario     "?""
  int x = nota > 5? 1:0; 
  print(x);

  //Operador Default, se for null
  // String nome1;
  // String senuloo = nome1 ?? "Não informado" ;
  // print(senuloo);

}