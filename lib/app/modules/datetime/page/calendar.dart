import 'package:flutter/material.dart';

class CalendarExample extends StatefulWidget {
  @override
  _CalendarExampleState createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {
  static DateTime dataSelecionada = DateTime.now();

  DateTime _dataCriacao = dataSelecionada;

  String dataAgendamento;

  String _formatDataCriacaoPedido(DateTime data) {
    String dateFormarted = data.toString();
    List dateList = dateFormarted.split(".");
    String dados = dateList[0];

    return dados;
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      locale: Locale("pt"),
      context: context,
      initialDate: dataSelecionada,
      firstDate: DateTime(2018),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != dataSelecionada)
      setState(
        () {
          dataSelecionada = picked;
        },
      );
  }

  formatarDia() {
    if (dataSelecionada.day <= 9) {
      var dia = "0${dataSelecionada.day}";
      return dia;
    } else
      return dataSelecionada.day.toString();
  }

  formatarMes() {
    if (dataSelecionada.month <= 9) {
      var mes = "0${dataSelecionada.month}";
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
            Text('Criação: ${_formatDataCriacaoPedido(_dataCriacao)}'),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              child: Text('Data Agendamento: ${this.dataAgendamento}'),
              onTap: () => _selectDate(context),
            ),
          ],
        ),
      ),
    );
  }
}
