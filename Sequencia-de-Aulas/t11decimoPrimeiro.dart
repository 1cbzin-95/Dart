//Mapas, são formados por nome e valor ou chave->valor
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
  Pessoa p1 = new Pessoa("valeria");
  Pessoa p2 = new Pessoa("Lucas");
  //MAp
  Map<int,String> dds = Map();
  dds[11]="são Paulo";
  dds[19]="Campinas";
  dds[13]="Não sei";
  Map<String,dynamic> pessoa =Map();
  pessoa["nome"]="enzo";
  print(pessoa);

  //map de objetos
  Map<String,Pessoa> ps = Map();
  ps["ganhador"]= p1;
  print(ps);

  //imprimindo todas as chaves e todos os valores
  print(dds.keys);
  print(dds.values);
  dds.remove(13); //ao excluir chave valor lidago tambem é excluido
  print(dds.values);


}
