import 'package:ejmplo_getit/data/models/episodes_page_model.dart';
import 'package:ejmplo_getit/domain/entities/episodes_page.dart';
import 'package:ejmplo_getit/domain/entities/result.dart';
import 'package:ejmplo_getit/domain/usecases/get_episode.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  final GetEpisode _getEpisode; //usecase
  EpisodesPage _episodesPage;
  String _errorMessage;

  DataProvider(this._getEpisode);

  get episodesPage => _episodesPage;
  List<Result> get episodes => _episodesPage.results;
  get errorMessage => _errorMessage;

  void getEpisodes() async {
    try {
      _episodesPage = await _getEpisode();
    } catch (e) {
      _errorMessage = 'error: ${e.toString()}';
    } finally {
      notifyListeners();
    }
  }
}
