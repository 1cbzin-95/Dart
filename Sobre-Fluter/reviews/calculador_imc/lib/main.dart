import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Calculadora IMC",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaControler = TextEditingController();
  String _info = "Informe seus dados";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>(); //declaro chave global para formulario, e para saberverificar se ele foi preenchido

  void _resetarFields() {
    pesoController.text = "";
    alturaControler.text = "";
    setState(() {
      _info = "Informe seus dados";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculate() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaControler.text) / 100;
      double imc = peso / (altura * altura);
      if (imc < 18.6) {
        _info = "Abaixo do peso (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 18.6 && imc < 24.9)
        _info = "Peso ideal (${imc.toStringAsPrecision(3)})";
      else if (imc >= 24.9 && imc < 29.9)
        _info = "Levemente Acima do peso (${imc.toStringAsPrecision(3)})";
      else if (imc >= 29.9 && imc < 34.9)
        _info = "Obesidade grau 1 (${imc.toStringAsPrecision(3)})";
      else if (imc >= 34.9 && imc < 39.9)
        _info = "Obesidade grau 2 (${imc.toStringAsPrecision(3)})";
      else if (imc >= 40)
        _info = "Obesidade grau 3 (${imc.toStringAsPrecision(3)})";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora de Imc"),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(onPressed: _resetarFields, icon: Icon(Icons.refresh))
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Form(
              key: _formKey,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 120.0,
                    color: Colors.green,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Peso em (kg)",
                      labelStyle: TextStyle(color: Colors.green),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green),
                    controller: pesoController,
                    validator:(value){
                      if(value!.isEmpty){
                        return "insira seu peso!";
                      }
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Altura em (cm)",
                      labelStyle: TextStyle(color: Colors.green),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green),
                    controller: alturaControler,
                    validator:(value){
                      if(value!.isEmpty){
                        return "insira sua altura!";
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
                    child: Container(
                        height: 50.0,
                        child: RaisedButton(
                          child: Text("Calcular", style: TextStyle(
                              color: Colors.white, fontSize: 25.0),),
                          color: Colors.green,
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              _calculate();
                            }
                          },
                        )
                    ),
                  ),
                  Text(" $_info ! ", textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green, fontSize: 25.0),)
                ],
              )
          ),
        )
    );
  }
}
