import 'package:flutter/material.dart';

class ClockExample extends StatefulWidget {
  @override
  _ClockExampleState createState() => _ClockExampleState();
}

class _ClockExampleState extends State<ClockExample> {
  static TimeOfDay horaSelecionada = TimeOfDay.now();

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
        title: Text("Clock"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              child: Text('Horario Agendamento: ${this.horaAgendamento}'),
              onTap: () => _selectHour(context),
            ),
          ],
        ),
      ),
    );
  }
}
