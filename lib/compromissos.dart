import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class compromissos extends StatefulWidget {
  const compromissos({Key? key}) : super(key: key);

  @override
  _compromissosState createState() => _compromissosState();
}

class _compromissosState extends State<compromissos> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon:Icon(Icons.brightness_4)),
                Tab(icon:Icon(Icons.brightness_5_rounded)),
                Tab(icon:Icon(Icons.brightness_2)),
              ],
            ) ,
            title: Text("Compromissos"),
            backgroundColor: Colors.indigo,
          ),
          body:Container(
            child: TabBarView(
              children:<Widget> [
                Padding(
                  padding: EdgeInsets.all(17),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Atividades da manhã:"),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(17),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Atividades da tarde:"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(17),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Atividades da noite:"),
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );

  }
}