import 'package:flutter/material.dart';

class InputSwitch extends StatefulWidget {
  @override
  _InputSwitchState createState() => _InputSwitchState();
}

class _InputSwitchState extends State<InputSwitch> {

  bool _ativado1 = true;
  bool _ativado2 = true;
  bool _ativado3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputSwitch"),
      ),
      body: Column(

          children: <Widget>[
            Text("Bloquear"),
            Switch(
              value: this._ativado1,
              activeColor: Colors.red,
              inactiveThumbColor: Colors.redAccent,

              activeTrackColor: Colors.black,
              inactiveTrackColor: Colors.blue,

              onChanged: (bool valor) {
                setState(() {
                 _ativado1 = valor; 
                });
              },
            ),
            SwitchListTile(
              title: Text("Notificação"),
              value: this._ativado2,
              onChanged: (bool valor) {
                  setState(() {
                    _ativado2 = valor;
                  });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                Switch(
                  value: this._ativado3,
                  onChanged: (bool valor){
                    this._ativado3 = valor;
                  },
                ),
                Text("Notificação"),
                ]
              ),
            )
          ],
        

        ),
        
      
      
    );
  }
}