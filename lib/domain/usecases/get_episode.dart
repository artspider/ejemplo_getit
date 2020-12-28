import 'package:ejmplo_getit/domain/entities/episodes_page.dart';
import 'package:ejmplo_getit/domain/repositories/episodes_page_repository.dart';

class GetEpisode {
  final EpisodesPageRepository _repository;

  GetEpisode(this._repository) : assert(_repository != null);

  Future<EpisodesPage> call() async {
    return await _repository.getEpisodePage();
  }
}
