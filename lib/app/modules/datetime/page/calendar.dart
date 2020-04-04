import 'package:flutter/material.dart';

class CalendarExample extends StatefulWidget {
  @override
  _CalendarExampleState createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {
  static DateTime dataSelecionada = DateTime.now();

  String dataAgendamento;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      locale: Locale("pt"),
      context: context,
      initialDate: dataSelecionada,
      firstDate: DateTime(2018),
      lastDate: DateTime(2101),
      initialDatePickerMode: DatePickerMode.day,
    );

    if (picked != null && picked != dataSelecionada)
      setState(
        () {
          dataSelecionada = picked;
        },
      );
  }

  String formatarDia() {
    if (dataSelecionada.day <= 9) {
      String dia = "0${dataSelecionada.day}";
      return dia;
    } else
      return dataSelecionada.day.toString();
  }

  String formatarMes() {
    if (dataSelecionada.month <= 9) {
      String mes = "0${dataSelecionada.month}";
      return mes;
    } else
      return dataSelecionada.month.toString();
  }

  @override
  Widget build(BuildContext context) {
    setState(
      () {
        dataAgendamento =
            "${formatarDia()}/${formatarMes()}/${dataSelecionada.year}";
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton.icon(
              elevation: 5,
              color: Theme.of(context).primaryColor,
              onPressed: () => _selectDate(context),
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 25,
              ),
              label: Text(
                this.dataAgendamento,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
