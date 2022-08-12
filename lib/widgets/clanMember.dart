import 'package:app/widgets/clancard.dart';
import 'package:flutter/material.dart';
import '../models/clan.dart';

class ClanMember extends StatelessWidget {
  
  var clans = Clan.clans;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Clan Members',
          style: Theme.of(context).textTheme.headline2,
        ),
        ListView.builder(
          itemBuilder: (ctx, i) {
            return ClanCard(
                imageUrl: clans[i].imageUrl, name: clans[i].name);
          },
          itemCount: 3,
          shrinkWrap: true,
        ),
      ],
    );
  }
}
