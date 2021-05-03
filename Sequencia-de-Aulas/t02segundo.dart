void main(){
  //Operações aritmeticas com dart, dart possui os operadores aritmeticos:
  //Soma +,subtração -, multiplicação *, divisao /, resto de divisão %
  double num1 = 10.0;
  double num2 = 15;
  double result = num1+num2;
  result+=1; //result=result+1
  result++; //e dai por diante
  print(result);

  //Operações Logicos com dart,
  //comparadores,Seguem o padrão de todas as linguagem >,<,>=,<=,==,!=, todos retornam true ou false dependendo da pergunta
  // || ->(OR) && ->(E)  
  //operador de negação ex: !true, !falso
  bool ehPar = ((2%2)==0);
  print(ehPar);
  ehPar = ((2%2)!=0);
  print(ehPar);


}