import 'package:flutter/material.dart';
import 'package:helloworld/teams_nba.dart';

import 'team_nba_repo.dart';

class TeamController {
  final NbaRepo _nbaRepo;

  TeamController(this._nbaRepo);

  Future<List<Teams>> fetchAllTeams() async {
    return _nbaRepo.getAllTeams();
  }
}
