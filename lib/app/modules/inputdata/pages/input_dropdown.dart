import 'package:flutter/material.dart';

import '../inputdata_controller.dart';

class InputDropdown extends StatefulWidget {
  @override
  _InputDropdownState createState() => _InputDropdownState();
}

class _InputDropdownState extends State<InputDropdown> {
  InputdataController _controllerInputData = InputdataController();
  String dropdownValue = 'Selecione um dia da Semana';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              child: DropdownButton(
                value: dropdownValue,
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_downward,
                  color: Theme.of(context).primaryColor,
                ),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                underline: Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                ),
                items: _controllerInputData.list
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  _controllerInputData.day = newValue;
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
