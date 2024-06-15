// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleated;
  Function(bool?)? onChanged;

   TodoTile({
    super.key,
    required this.taskName, 
    required this.taskCompleated,
    required this.onChanged, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
      padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            // check box
            Checkbox(value: taskCompleated, 
            onChanged: onChanged,
            activeColor: Colors.black,
            ),
            // task name
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleated
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
          ],
        ),
        decoration: BoxDecoration(color: Colors.yellow,
        borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}