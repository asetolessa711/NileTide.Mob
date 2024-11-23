import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Add a Comment'),
        ),
        ElevatedButton(
          onPressed: () {
            // Submit comment logic
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
