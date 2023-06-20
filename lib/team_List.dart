import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  final String? abbreviation;
  final String? fullName;

  TeamList({Key? key, this.abbreviation, this.fullName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.sports_basketball, // Replace with the desired icon
              color: Colors.brown,
              size: 30,
            ),
            SizedBox(width: 8),
            Text(
              abbreviation ?? '',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 2,
              ),
            ),
            Text(
              ' | ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              fullName ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 2,
              ),
            ),
            // Spacer(),
            // Icon(
            //   Icons.favorite_border_sharp, // Replace with the desired icon
            //   color: Colors.brown,
            //   size: 30,
            // ),
          ],
        ),
      ),
    );
  }
}
