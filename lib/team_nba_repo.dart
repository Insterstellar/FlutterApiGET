import 'dart:convert';

import 'package:helloworld/teams_nba.dart';
import 'package:http/http.dart' as http;
import 'nba_interface.dart';

class NbaRepo implements NbaInterface {
  String url = 'https://www.balldontlie.io';

  @override
  Future<List<Teams>> getAllTeams() async {
    List<Teams> allMyTeams = [];
    var urlString = Uri.parse('$url/api/v1/teams');
    var response = await http.get(urlString);
    var body = json.decode(response.body);
    var bodyData = body['data'];
//
    //print(body);
    //print(allMyTeams[0].abbreviation);

    for (var i = 0; i < bodyData.length; i++) {
      allMyTeams.add(Teams.fromJson(bodyData[i]));
      print(allMyTeams[i].abbreviation);
    }

    //print(allMyTeams[i].abbreviation);

    return allMyTeams;
    // model class
    // interface
    // service
    // contoller
  }
}
