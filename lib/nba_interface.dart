import 'teams_nba.dart';

abstract class NbaInterface {
  Future<List<Teams>> getAllTeams();
}
