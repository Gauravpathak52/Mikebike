import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSlotsScreen extends StatefulWidget {
  const CalendarSlotsScreen({super.key});

  @override
  _CalendarSlotsScreenState createState() => _CalendarSlotsScreenState();
}

class _CalendarSlotsScreenState extends State<CalendarSlotsScreen> {
  DateTime _selectedDate = DateTime.now();
  final Map<DateTime, List<Map<String, dynamic>>> _slots = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      {
        "time": "08:00",
        "title": "The BEST of Kuala Lumpur CLASSIC",
        "available": false
      },
      {
        "time": "09:00",
        "title": "Kuala Lumpur's Authentic Experience",
        "available": false
      },
      {
        "time": "10:00",
        "title": "Riverside Experience Tour",
        "available": false
      },
      {
        "time": "16:00",
        "title": "Kuala Lumpur SUNSET and NIGHT TOUR",
        "available": true
      },
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1):
        [
      {
        "time": "08:00",
        "title": "The BEST of Kuala Lumpur CLASSIC",
        "available": true
      },
      {
        "time": "09:00",
        "title": "Kuala Lumpur's Authentic Experience",
        "available": true
      },
      {
        "time": "10:00",
        "title": "Riverside Experience Tour",
        "available": false
      },
      {
        "time": "16:00",
        "title": "Kuala Lumpur SUNSET and NIGHT TOUR",
        "available": true
      },
    ],
  };

  List<Map<String, dynamic>> _getSlotsForDate(DateTime date) {
    return _slots[DateTime(date.year, date.month, date.day)] ?? [];
  }

  void _onSlotTap(Map<String, dynamic> slot) {
    if (!slot["available"]) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Unavailable Slot"),
            content: const Text("It's not possible to book this tour anymore."),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Slot Selected"),
            content: Text("You selected:\n${slot["time"]} - ${slot["title"]}"),
            actions: [
              TextButton(
                onPressed: () => navigateTobookingform(
                    context, slot["title"], slot["time"], _selectedDate),
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> slotsForSelectedDate =
        _getSlotsForDate(_selectedDate);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MAKE A RESERVATION'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        elevation: 4,
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2025, 1, 1),
            lastDay: DateTime.utc(2025, 12, 31),
            focusedDay: _selectedDate,
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDate = selectedDay;
              });
              print("Selected Date: $_selectedDate");
            },
          ),
          const SizedBox(height: 10),
          Expanded(
            child: slotsForSelectedDate.isEmpty
                ? const Center(
                    child: Text('No slots available for this date.'),
                  )
                : ListView.builder(
                    itemCount: slotsForSelectedDate.length,
                    itemBuilder: (context, index) {
                      final slot = slotsForSelectedDate[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: ListTile(
                          leading: const Icon(Icons.schedule),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${slot["time"]} - ${slot["title"]}",
                                style: const TextStyle(fontSize: 16),
                              ),
                              if (!slot["available"])
                                const Text(
                                  "It's not possible to book this tour anymore.",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 13),
                                ),
                            ],
                          ),
                          onTap: () => _onSlotTap(slot),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
