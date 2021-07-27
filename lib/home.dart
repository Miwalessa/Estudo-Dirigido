import 'package:homework/compromissos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:homework/contas.dart';
import 'package:homework/notas.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {




  @override
  Widget build(BuildContext context) {
    var mail;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Agenda Virtual"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
        //padding: EdgeInsets.all(16),

        child:Column(
          children: <Widget>[
            Text(
              "Bem vindo a sua agenda virtual!",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            Image.asset("imagens/agenda1.jpg",
              height: 300,
              width: 500,
            ),
            Padding(padding:EdgeInsets.all(15)),
            RaisedButton.icon(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(BuildContext context)=> notas()));
              },
              icon: Icon(Icons.assignment_outlined),
              label: Text("Notas"),),
            Padding(padding:EdgeInsets.all(15)),
            RaisedButton.icon(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(BuildContext context)=> contas()));
              },
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: Text("Contas"),),
            Padding(padding:EdgeInsets.all(15)),
            RaisedButton.icon(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(BuildContext context)=> compromissos()));
              },
              icon: Icon(Icons.speaker_notes_rounded),
              label: Text("Compromissos"),),


          ],

        ),



      ),
    );
  }

}