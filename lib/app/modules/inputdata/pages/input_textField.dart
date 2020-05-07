import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../inputdata_controller.dart';

class InputTextField extends StatefulWidget {
  @override
  _InputTextFieldState createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  TextEditingController _controllerEntrada = TextEditingController();

  @override
  Widget build(BuildContext context) {
    InputdataController _controllerInputData = InputdataController();
    return Scaffold(
      appBar: AppBar(
        title: Text("InputTextField"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Digite o Valor"),
                controller: _controllerEntrada,
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      keyboardType: TextInputType.url,
                      cursorColor: Theme.of(context).accentColor,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          size: 26,
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Nome Completo',
                        hintText: 'Digite o nome completo',
                        hoverColor: Colors.red,
                        focusColor: Colors.red,
                        counterStyle: TextStyle(color: Colors.transparent),
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        _controllerInputData.name = value;
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      keyboardType: TextInputType.url,
                      cursorColor: Theme.of(context).accentColor,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                            ),
                          ),
                          onTap: () {},
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Nome Completo',
                        hintText: 'Digite o nome completo',
                        hoverColor: Colors.red,
                        focusColor: Colors.red,
                        counterStyle: TextStyle(color: Colors.transparent),
                        icon: Icon(
                          Icons.account_circle,
                          size: 36,
                        ),
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        _controllerInputData.name = value;
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome Completo',
                  hintText: 'Digite o nome completo',
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),

                initialValue: "Nome Completo",
                onChanged: (value) {
                  _controllerInputData.name = value;
                },
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                //Controlador de entada de dado
              )
            ],
          ),
        ),
      ),
    );
  }
}
