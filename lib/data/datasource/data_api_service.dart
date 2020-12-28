import 'package:http/http.dart' as http;

import 'package:ejmplo_getit/data/models/episodes_page_model.dart';

abstract class DataApiService {
  Future<EpisodesPageModel> getEpisodePage();
}

class DataApiServiceImpl extends DataApiService {
  @override
  Future<EpisodesPageModel> getEpisodePage() async {
    var episodePage;
    try {
      final url = 'https://rickandmortyapi.com/api/episode/';
      final response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print('Dentro del if');
        print(response.body);
        print('El response body');
        episodePage = episodesPageModelFromJson(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
    return episodePage;
  }
}
