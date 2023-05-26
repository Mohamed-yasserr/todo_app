import 'package:flutter/material.dart';

class ShowAddTaskBottomSheet extends StatelessWidget {
  const ShowAddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add new task',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
            SizedBox(height: 14),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('Task title'),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ))),
            ),
            SizedBox(
              height: 28,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('Task Description'),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ))),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Select Time',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                child: Text(
                  '12/12/2022',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width*0.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(10, 40),
                ),
                onPressed: () {},
                child: Text(
                  'Add Task',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
