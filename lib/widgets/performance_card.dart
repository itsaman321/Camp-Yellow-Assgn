import 'package:flutter/material.dart';

class PerformanceCard extends StatelessWidget {
  String imageUrl;
  String heading;

  PerformanceCard({required this.imageUrl, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
              child: Text(
            heading,
            style: Theme.of(context).textTheme.headline3,
            overflow: TextOverflow.fade,
          )),
        ],
      ),
    );
  }
}
