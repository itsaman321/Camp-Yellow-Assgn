import 'package:app/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import '../models/chat.dart';

class ChatDiscuss extends StatelessWidget {
  var chats = Chat.chats;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Chat Discussion',
          style: Theme.of(context).textTheme.headline2,
        ),
        ListView.builder(
          itemBuilder: (ctx, i) {
            return ChatCard(
                heading: chats[i].heading, message: chats[i].message);
          },
          itemCount: 3,
          shrinkWrap: true,
        ),
        const Center(
          child: Text(
            'See More',
            style: TextStyle(color: Colors.yellow, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
