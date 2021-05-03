//Funçoes em dart

void main(){
  printIntro();
  int num1=10;int num2=20;
  int result = somaDoisnumeros(num1,num2);
  print(result);
  print(result =somaDoisnumeros2(num1, num2));
  criarBotao("SAIR",cor: "PRETO",largura: 20.0);

  criarBotao2("SAIR",criadoFun,cor: "PRETO",largura: 20.0);

  criarBotao3("SAIR",(){
    print("boato");
  });

}


void printIntro(){
  print("Seja bem vindo");
  
}
int somaDoisnumeros(int x,int y){
    return x+y;
}
//Funçoes com corpo so de 1 linha
int somaDoisnumeros2(int x,int y)=> x+y;

// Funções com parametros opcionais
void criarBotao(String texto,{String cor="blue", double largura=0.0}){  //coloca os parametros opcionais entre chaves, Tem que definir valor Default na Escritura/ou require
  print(texto);
  print(cor);
  print(largura);
}
void criadoFun(){
  print("criado");
}
//Funçoes anonimas
void criarBotao2(String texto,Function criadoFun,{String cor="blue", double largura=0.0}){//passo outrafunção
  print(texto);
  print(cor);
  print(largura);
  criadoFun();
}
void criarBotao3(String texto,Function criadoFun,{String cor="blue", double largura=0.0}){//passo outrafunção
  print(texto);
  print(cor);
  print(largura);
  criadoFun();
}