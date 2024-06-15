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
      padding: const EdgeInsets.all(25.0),
      child: Container(
      padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            // check box
            Checkbox(value: taskCompleated, onChanged: onChanged),
            // task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(color: Colors.yellow,
        borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}