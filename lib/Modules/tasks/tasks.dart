import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/Modules/tasks/task_item.dart';
import 'package:todo/shared/styles/colors.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: PrimaryColor,
            activeBackgroundDayColor: WhiteColor,
            dotsColor: PrimaryColor,
            selectableDayPredicate: (date) => true,
            locale: 'en',
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return TaskItem();
            },
            itemCount: 22,
            ),
          )
        ],
      ),
    );
  }
}
