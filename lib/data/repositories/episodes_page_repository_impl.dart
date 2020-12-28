import 'package:ejmplo_getit/data/datasource/data_api_service.dart';
import 'package:ejmplo_getit/domain/entities/episodes_page.dart';

import 'package:ejmplo_getit/domain/repositories/episodes_page_repository.dart';

class EpisodesPageRepositoryImpl extends EpisodesPageRepository {
  final DataApiServiceImpl _dataApiService;

  EpisodesPageRepositoryImpl(this._dataApiService)
      : assert(_dataApiService != null);

  @override
  Future<EpisodesPage> getEpisodePage() async {
    return await _dataApiService.getEpisodePage();
  }
}
