import 'package:ejmplo_getit/data/datasource/data_api_service.dart';
import 'package:ejmplo_getit/data/repositories/episodes_page_repository_impl.dart';
import 'package:ejmplo_getit/domain/repositories/episodes_page_repository.dart';
import 'package:ejmplo_getit/domain/usecases/get_episode.dart';
import 'package:ejmplo_getit/presentation/provider/data_provider.dart';
import 'package:get_it/get_it.dart';

final _injector = GetIt.instance;

void setup() {
  _injector.registerLazySingleton<DataApiServiceImpl>(
    () => DataApiServiceImpl(),
  );
  _injector.registerLazySingleton<EpisodesPageRepository>(
    () => EpisodesPageRepositoryImpl(_injector<DataApiServiceImpl>()),
  );
  _injector.registerLazySingleton(
    () => DataProvider(_injector<GetEpisode>()),
  );
  _injector.registerLazySingleton(
    () => GetEpisode(_injector<EpisodesPageRepository>()),
  );
}
