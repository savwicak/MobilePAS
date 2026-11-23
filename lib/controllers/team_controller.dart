import 'package:flutterchallange/models/team_model.dart';
import 'package:flutterchallange/service/sport_service.dart';
import 'package:get/get.dart';

class SportController {
  final Rxn<PremierLeagueModel> sport = Rxn<PremierLeagueModel>();
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  final SportService _service = SportService();

  // List<Team> get teamList {
  //   return sport.teams;
  // }

  void fetchSports() async {
    try{
      isLoading.value = true;
      errorMessage.value = '';

      final result = await _service.fetchSports();

      sport.value = result;
    }catch(e){
      errorMessage.value = e.toString();
    }finally {
      isLoading.value = false;
    }
  }
}