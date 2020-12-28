import 'package:ejmplo_getit/domain/entities/episodes_page.dart';

abstract class EpisodesPageRepository {
  Future<EpisodesPage> getEpisodePage();
}
