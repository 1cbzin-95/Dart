import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Stack(
        children: <Widget>[
          Image.asset("images/restaurant.jpg",fit: BoxFit.cover,height: 1000.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoa:0",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(child: Text("+1",style: TextStyle(fontSize: 40,color: Colors.white)),onPressed: (){},),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(child: Text("+1",style: TextStyle(fontSize: 40,color: Colors.white)),onPressed: (){},),
                  ),
                ],
              ),
              Text(
                "Pode Entrar",
                style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,
                    fontSize: 30.0),
              )
            ],
          )
        ],
      )
  ));
}