// executar  dart helow.dart
// No dart que nem no C, a função de inicio do programa é o main, o dart é CaseSensitivy


void main(){
  print("ola mundo Dart!");

  //Em dart temos os tipos de Variaveis, 
  //Textos-> String, Inteiro->int , Flutuantes com mais casas ->double, Boleano -> bool 
  String fruta = "Goiabas";
  int quantidade = 26;
  double preco = 10.50;
  bool aindaTem = true;//false

  print("$fruta custa x \$");//Vale lembrar que para acrescentar um caracter seja reservado pela linguagem em um print precisamos utilizar o "\carctere" ex: \$
  print(quantidade);
  print(preco);
  print(aindaTem);
  //Concatenando Strings -> textos
  print("O nome da fruta é: "+fruta);//simples
  print("o nome da fruta é: $fruta ,tem a disposição $quantidade e custa $preco ");//concatenando com operador $


  //Utilizando recurso de variavel não especificada. Ao declarar ela com var ela ja identifica e assume o tipo do primeiro valor colocado, e nao assume outro tipo
  var qualquer = 1;
  // qualquer = "afwf"; não podemos pq qualquer ja é inteiro
  print(qualquer);

  //Porém essiste um outo tipo de variavel que pode assumir qualquer tipo
  dynamic teste = 1;
  print(teste);
  teste = "1String";
  print(teste);
}