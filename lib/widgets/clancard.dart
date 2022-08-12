import 'package:flutter/material.dart';

class ClanCard extends StatelessWidget {
  String imageUrl;
  String name;

  ClanCard({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name,style: Theme.of(context).textTheme.headline3,),
      ),
    );
  }
}
