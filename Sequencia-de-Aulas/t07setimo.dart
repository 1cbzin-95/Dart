//Herança no dart
class Pessoa{
  String _nome;
  int _idade;
  double _altura;

  //construtor
  Pessoa(this._nome,this._idade,this._altura);

  //metodos gets e sets
  String get nome{
    return this._nome;
  }
  set nome(String nome){
    this._nome=nome;
  }

  int get idade{
    return this._idade;
  }
  set idade(int idade){
    this._idade=idade;
  }

  double get altura{
    return this._altura;
  }
  set altura(double altura){
    this._altura=altura;
  }
  void comprar(){
    print("Pesooa comprou");
  }

}
class  Cliente extends Pessoa{      /**Toda classe no dart ja extends por ObrigAtOrio UMA CLASSE DO TIPO OBJETO E ESSA CLASSE JA VEM COM UM METODO toString */
  String _cPF;                      /** e AGENTE PODE REESCREVER ESSE METODO */

  Cliente(this._cPF, String nome,int idade, double altura) : super(nome,idade,altura); //obsever como passo para o 
  
  //reescrita de metodos
  @override
  void comprar(){
    print("Cliente comprou");
  }
  @override
  String toString(){
    return "CLIENTE | nome:$nome , altura:$altura \n";
  }
  void comprarAlgo(String algo){
    print("a pessoa comprou $algo");
  }

  String get cPF{
    return this._cPF;
  }
  set cPF(String cpf){
    this._cPF=cpf;
  }
}
void main(){
  Cliente x1 = new Cliente("11600808441","julho", 26, 1.86);
  print(x1.nome);
  print(x1.idade);
  print(x1.cPF);

  x1._cPF = "118.009.98-31";
  x1._altura = 1.74;
  print(x1.nome);
  print(x1.idade);
  print("o cpf do maricas é: ${x1.cPF}");
  print(x1.toString());

}