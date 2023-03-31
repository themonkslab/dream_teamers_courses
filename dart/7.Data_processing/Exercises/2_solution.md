# Solution 2

```dart
import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: file_name.dart 2_players.csv 2_teams.csv 2_matches.csv');
    exit(1);
  }
  final inputPlayers = args.first;
  final inputTeams = args.elementAt(1);
  final inputMatches = args.last;

  final playersList = File(inputPlayers).readAsLinesSync();
  final teamsList = File(inputTeams).readAsLinesSync();
  final matchesList = File(inputMatches).readAsLinesSync();

  playersList.removeAt(0);
  teamsList.removeAt(0);
  matchesList.removeAt(0);

  int totalAge = 0;
  int totalPlayers = 0;
  
  for (var player in playersList) {
    final playerData = player.split(',');
    totalAge += int.parse(playerData[1]);
    totalPlayers ++;    
  }

  print('\nThe average age of all players is ${(totalAge/totalPlayers).toStringAsFixed(2)}');

  final teamsWins = <String, dynamic> {};
  for (var team in teamsList) {
    final teamData = team.split(',');
    teamsWins['${teamData[0]}'] = 0;
  }

  int totalScore = 0;
  for (var match in matchesList) {
    final matchData = match.split(',');
    final result = matchData[3].split('-');
    totalScore += int.parse(result[0]) + int.parse(result[1]);
    if (int.parse(result[0]) > int.parse(result[1]) ) {
      teamsWins['${matchData[0]}'] ++;
    } else {
      teamsWins['${matchData[1]}'] ++;
    }    
  }

  var sortTeamWins = Map.fromEntries(teamsWins.entries.toList()..sort((e1,e2) => e1.value.compareTo(e2.value)));  
  
  print('\nThe team with more wins is ${sortTeamWins.keys.last}');
  print('\nThe total amount of goals score is $totalScore \n');
}
```
