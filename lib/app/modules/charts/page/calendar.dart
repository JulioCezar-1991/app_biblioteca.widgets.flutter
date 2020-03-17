import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarExample extends StatefulWidget {
  @override
  _CalendarExampleState createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PartsLine'),
      ),
      body: Container(
        child: SfCalendar(
          view: CalendarView.week,
          initialSelectedDate: DateTime(2019, 12, 20, 12),
          appointmentTextStyle: TextStyle(
            color: Colors.red,
          ),
          timeZone: 'E. South America Standard Time',
          cellBorderColor: Colors.purple,
          backgroundColor: Colors.white,
          firstDayOfWeek: 1,
          headerHeight: 40,
          todayHighlightColor: Colors.pinkAccent,

          monthViewSettings: MonthViewSettings(
            showAgenda: true,
          ),
          //Configuração Header
          headerStyle: CalendarHeaderStyle(
            textAlign: TextAlign.left,
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 22,
              color: Colors.purple,
            ),
          ),

          //Configuração Style data
          viewHeaderStyle: ViewHeaderStyle(
            dayTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 15,
              color: Colors.purple,
            ),
            dateTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 15,
              color: Colors.purple,
            ),
          ),

          //Configuração Style hora
          timeSlotViewSettings: TimeSlotViewSettings(
            timeInterval: Duration(minutes: 30),
            timeFormat: "h:mm",
            timeRulerSize: 50,
            dateFormat: "d",
            dayFormat: "EEE",
            endHour: 18,
            startHour: 7,
            nonWorkingDays: <int>[DateTime.friday, DateTime.saturday],
            timeTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 15,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
