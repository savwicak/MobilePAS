import 'dart:convert';
import 'package:flutterchallange/models/sport_model.dart';
import 'package:http/http.dart' as http;

class SportService {
  Future<PremierLeagueModel> fetchSports() async {

    final url = Uri.https(
      'thesportsdb.com',
      '/api/v1/json/123/search_all_teams.php? l=English%20Premier%20League',
    );

    final response = await http.get(url);

    if(response.statusCode == 200 ){
      return PremierLeagueModel.fromJson(
        jsonDecode(response.body),
      );
    }else {
      throw Exception(
        'Failed to load asteroids: ${response.statusCode}',
      );
    }
  }
}