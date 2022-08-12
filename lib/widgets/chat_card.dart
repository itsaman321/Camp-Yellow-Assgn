import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  String heading;
  String message;

  ChatCard({required this.heading, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.headline3,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.headline1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
