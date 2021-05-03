//Classes abstratadas -> são classes que não fazem sentido vc instanciar um objeto atrvez dela,
// para isso colocamos abstract e nn pode se estancia mais um animal
// mesmo padrao de java se criar metodo na classe abstrada e herdar dela é obrigatorio dar oVerride e implementar na classe que esta herdando 
abstract class Animal{
    String _nome;
    int _idade;
    String _cor;
    Animal(this._nome,this._idade,this._cor);

    void fazerBarulho();//metodo abstrato , sem corpo
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
    String get cor{
      return this._cor;
    }
    set cor(String cor){
      this._cor=cor;
    }
}
class Cavalo extends Animal{
  bool _comeCapim;
  Cavalo(this._comeCapim,String nome,int idade, String cor): super(nome,idade,cor);


  @override
  void fazerBarulho(){
    print("rinchadooooooooooooooooo");
  }
  bool get comeCapim{
    return this._comeCapim;
  }
  set comeCapim(bool comeOuNao){
    this._comeCapim=comeOuNao;
  }
  @override
  String toString(){
    return "Cavalo | ele come capim?:$comeCapim, nome:$nome, idade:$idade, cor dele:$cor \n";
  }
}
void main(){
  Cavalo c1 = new Cavalo(true, "Jaspion", 45, "Branco");
  print(c1);

}