//Classes e objetos em dart
class Pessoa{             //Modificadores de acesso, "_"antes da variavel ou no caso ATRIBUTO
  String _nome;
  int _idade;
  double _altura;

  //construtor da classe
  // Pessoa(String nome,int idade, double altura){
  //   this.nome=nome;
  //   this.idade=idade;
  //   this.altura=altura;
  //}

  //construtor da classe no dart "simplificado"
  Pessoa(this._nome,this._idade,this._altura);

  //Em dart tambem temos onamedConstrutor, que é um construtor predefinido,que usa valores default
  // Pessoa.nascer(this.nome,this.altura){
  //   idade=0;
  // }


  //metodos
  void dormir(){
    print("$_nome esta dormindo  zzzzzzzzzzzzzzzzzzzz");
  }
  int get idade{ //get e set 
    return _idade; //utilizando operador de acessibilidade
  }
  set idade(int idade){
    this._idade=idade;
  }

}

void main(){
  Pessoa peesoa1 = new Pessoa("Joao",34,1.45);//instanciando
  // peesoa1.nome = "João";
  peesoa1.idade = 14;      //caralho olha isso, sem ()
  print(peesoa1.idade);

}