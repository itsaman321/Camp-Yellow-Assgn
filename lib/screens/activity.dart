// ignore_for_file: unnecessary_const
import 'package:app/widgets/clanMember.dart';

import '../widgets/chatDiscussion.dart';
import 'package:app/models/performance.dart';
import 'package:app/widgets/performance_card.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;

    var items = Performance.performances;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const Divider(
          thickness: 2,
          color: Colors.white,
        ),
        Text('Past Featured Performance',
            style: Theme.of(context).textTheme.headline2),
        // ignore: sized_box_for_whitespace
        Container(
          width: ss.width,
          child: Column(
            children: [
              ListView.builder(
                itemBuilder: (context, i) {
                  return PerformanceCard(
                      imageUrl: items[i].imageUrl, heading: items[i].heading);
                },
                itemCount: 3,
                shrinkWrap: true,
              ),
              const Text(
                'See More',
                style: TextStyle(color: Colors.yellow, fontSize: 15),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: Colors.white,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Live clan Activity Platform',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: ss.width,
                height: 100,
                child: const Center(
                    child: Text(
                  'Live Trading Championship',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                decoration: const BoxDecoration(
                  image: const DecorationImage(
                    image: const NetworkImage(
                      'https://c4.wallpaperflare.com/wallpaper/131/476/981/stoplight-street-blue-traffic-wallpaper-preview.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: ss.width,
                height: 100,
                child: const Center(
                    child: Text(
                  'Treasure hunt',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                decoration: const BoxDecoration(
                  image: const DecorationImage(
                    image: const NetworkImage(
                      'https://c4.wallpaperflare.com/wallpaper/131/476/981/stoplight-street-blue-traffic-wallpaper-preview.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'See More',
                  style: TextStyle(color: Colors.yellow, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: Colors.white,
        ),
        Container(
          height: 300,
          child: ChatDiscuss(),
        ),
        Container(
          child: ClanMember(),
        )
      ],
    );
  }
}
