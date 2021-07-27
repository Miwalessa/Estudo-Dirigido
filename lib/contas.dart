import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class contas extends StatefulWidget {
  const contas({Key? key}) : super(key: key);

  @override
  _contasState createState() => _contasState();
}

class _contasState extends State<contas> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contas",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        widthFactor: 150,
        child: Column(

          children: <Widget>[
            Padding(padding: EdgeInsets.all(7),),

            Text(
              "Contas do mês:",
              style: TextStyle(

                fontSize: 15,
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17),
              child: TextField(

                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Conta do cartão:"),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(17),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Conta da agua:"),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(17),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Conta de luz:"),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(17),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Conta de internet:"),

              ),
            ),
            Padding(
              padding: EdgeInsets.all(17),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Outras:"),

              ),
            ),
            RaisedButton.icon(
              onPressed: (){
              },
              icon: Icon(Icons.attach_money_sharp),
              label: Text("Somar",style: TextStyle(color: Colors.white),),
              color: Colors.blue,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "O valor de suas contas são de:"),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
