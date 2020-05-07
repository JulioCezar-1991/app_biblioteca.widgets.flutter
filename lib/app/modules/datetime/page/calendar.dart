import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

import '../datetime_controller.dart';

class CalendarExample extends StatefulWidget {
  @override
  _CalendarExampleState createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {
  static DateTime dataSelecionada = DateTime.now();

  final _dateTimeController = Modular.get<DatetimeController>();
  final formKey = GlobalKey<FormState>();
  final format = DateFormat("HH:mm");

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Observer(
              builder: (_) {
                return DateTimeField(
                  key: formKey,
                  initialValue: DateTime.now(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.calendar_today),
                    labelText: "Data de anivesário",
                    hintText: "Data de anivesário",
                    labelStyle: TextStyle(color: Theme.of(context).accentColor),
                  ),
                  format: format,
                  onShowPicker: (context, currentValue) async {
                    final date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2100));
                    if (date != null) {
                      _dateTimeController.date = date.toString();
                    }
                    return date;
                  },
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
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
