import 'package:flutter/material.dart';
import 'package:helloworld/teams_nba.dart';
import 'team_controller.dart';
import 'team_nba_repo.dart';
import 'team_List.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var teamController = TeamController(NbaRepo());

  @override
  Widget build(BuildContext context) {
    //print("hello world");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: FutureBuilder<List<Teams>>(
        future: teamController.fetchAllTeams(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                var myTeams = snapshot.data?[index];
                // print("my team data ${myTeams}");

                return TeamList(
                  abbreviation: myTeams?.abbreviation,
                  fullName: myTeams?.fullName,
                );
              },
            );
          }
          return Container(); // Placeholder for other connection states
        },
      ),
    );
  }
}
