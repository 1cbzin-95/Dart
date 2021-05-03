
//Listas em dart , são estruturas capazes de armazenar muitos objetos
class Pessoa{
  String _nome;
  Pessoa(this._nome);

  String get nome{
    return this._nome;
  }
  set nome(String nome){
    this._nome=nome;
  }
}
void main(){
  List<String>nomes=["Daniel","clodoaldo","marcoTulio","George"];//uma lista ja tem o metodo toString
  print(nomes);
  //pegando especifico, ou varrendo
  for(int i =0;i<4;i++){
    print(nomes[i]);
  }
  print("--------------------------------------------------------");
  //adicionando elemento
  nomes.add("Julha");

  //visualizando de acordo com o tamanho
  for(int i =0;i<nomes.length;i++){//<--nomes.lenght
    print(nomes[i]);
  }
  print("--------------------------------------------------------");
  //removendo elemento
  nomes.removeAt(2);//pela posição
  for(int i =0;i<nomes.length;i++){
    print(nomes[i]);
  }

  //Verificar se tem um elemento especifico
  print(nomes.contains("Daniel"));

  //armazenando Objetos
  Pessoa p1 = new Pessoa("valeria");
  Pessoa p2 = new Pessoa("Lucas");
  List<Pessoa> ps = List.empty(growable: true);//indica que pode ser vazia
  ps.add(p1);
  ps.add(p2);
  for(Pessoa p in ps){
    print(p.nome);
  }

}
