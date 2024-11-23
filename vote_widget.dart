import 'package:flutter/material.dart';

class VoteWidget extends StatefulWidget {
  @override
  _VoteWidgetState createState() => _VoteWidgetState();
}

class _VoteWidgetState extends State<VoteWidget> {
  int upvotes = 0;
  int downvotes = 0;

  void upvote() {
    setState(() {
      upvotes++;
    });
  }

  void downvote() {
    setState(() {
      downvotes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: Icon(Icons.thumb_up), onPressed: upvote),
        Text('$upvotes'),
        IconButton(icon: Icon(Icons.thumb_down), onPressed: downvote),
        Text('$downvotes'),
      ],
    );
  }
}
