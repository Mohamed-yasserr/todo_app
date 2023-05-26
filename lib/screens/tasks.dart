import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:todo_c8_str/screens/widgets/task_widget.dart';



class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Theme.of(context).primaryColor,
              selectedTextColor: Colors.white,
              height: 100,
              dateTextStyle: TextStyle(fontSize: 10),
              dayTextStyle: TextStyle(fontSize: 10),
              monthTextStyle: TextStyle(fontSize: 10),
              onDateChange: (newDate) {
                // New date selected
                setState(() {
                  date = newDate;
                });
              },
            ),
            SizedBox(height: 18,),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10,),
                itemBuilder: (context, index) {
                return TaskWidget();

              },itemCount: 5,),
            )
          ],
        );
  }
}
