import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "Contador de Pessoas ",
    home:Home()
  ));
}
class Home extends StatefulWidget {
  const Home({Key ? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _nPessoas=0;
  String _infoText="Pode Entrar";
  void _mudarEstado(int delta){
    setState(() {
      if(_nPessoas == 0 && delta<0){
        _nPessoas = 0;
      }
      else if(_nPessoas >= 15){
        _infoText="Esgotado até o talo";
        _nPessoas +=delta;
      }
      else if(_nPessoas <= 14){
        _infoText="Pode Entrar";
        _nPessoas +=delta;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurant.jpeg",fit: BoxFit.cover,height: 1000.0,),
        Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas:$_nPessoas",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child:  FlatButton(
                      onPressed: (){
                        _mudarEstado(-1);
                      },//função anonima
                      child: Text("-1",style: TextStyle(color: Colors.white,fontSize: 40.0),)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      onPressed: (){
                        //_nPessoas++; //estouincrementando mais ele nn refaz a tela se eu nn mandar
                        _mudarEstado(1);
                      },
                      child: Text("+1",style: TextStyle(color: Colors.white,fontSize: 40.0),)
                  ),
                ),
              ],
            ),
            Text(" $_infoText ! ",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 30.0),)
          ],
        )
      ],
    );
  }
}
