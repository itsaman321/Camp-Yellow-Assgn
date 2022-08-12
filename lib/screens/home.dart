// ignore_for_file: unnecessary_const

import '../screens/activity.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    var ss = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 2),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images-platform.99static.com/WWeTfsyhi69xuCvwOh7Y_RBGZ_k=/2x418:971x1387/500x500/top/smart/99designs-contests-attachments/120/120397/attachment_120397084'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: 300,
                      height: 100,
                      color: Colors.black45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Clan Name: Lorem Ipsum',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            '28 members online ,5 online',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Achievements',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Container(
                      width: ss.width,
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Current League',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://img.freepik.com/free-vector/premium-golden-metallic-security-shield-badge-design_1017-30508.jpg'),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'League Ranking',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              const Text(
                                '11th',
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Experience',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              const Text(
                                '2000 exp',
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '# of wins',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              const Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
                Activity(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
