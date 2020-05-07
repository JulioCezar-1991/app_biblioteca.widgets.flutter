import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

import '../datetime_controller.dart';

class ClockExample extends StatefulWidget {
  @override
  _ClockExampleState createState() => _ClockExampleState();
}

class _ClockExampleState extends State<ClockExample> {
  static TimeOfDay horaSelecionada = TimeOfDay.now();
  final _dateTimeController = Modular.get<DatetimeController>();

  final formKey = GlobalKey<FormState>();

  final format = DateFormat("HH:mm");

  String horaAgendamento;

  Future<Null> _selectHour(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: horaSelecionada,
    );
    if (picked != null && picked != horaSelecionada)
      setState(() {
        horaSelecionada = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    setState(
      () {
        horaAgendamento = "${horaSelecionada.hour}:${horaSelecionada.minute}";
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Time"),
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
                    icon: Icon(
                      Icons.access_time,
                      size: 40,
                      color: Theme.of(context).primaryColor,
                    ),
                    labelText: "Tempo Médio Gasto",
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColor),
                    border: OutlineInputBorder(),
                  ),
                  format: format,
                  onShowPicker: (context, currentValue) async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(
                        currentValue ?? DateTime.now(),
                      ),
                    );
                    if (time != null) {
                      _dateTimeController.time = time.toString();
                      print(time);
                    }
                    return DateTimeField.convert(time);
                  },
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton.icon(
              color: Colors.white,
              onPressed: () => _selectHour(context),
              icon: Icon(
                Icons.access_time,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
              label: Text(
                this.horaAgendamento,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
