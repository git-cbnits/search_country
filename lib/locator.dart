import 'package:get_it/get_it.dart';
import 'package:serach_country/application/search_country/search_country_bloc.dart';
import 'package:serach_country/infrastructure/search_country/datasource/search_country_remote.dart';
import 'package:serach_country/infrastructure/search_country/datasource/serach_sountry_query.dart';
import 'package:serach_country/infrastructure/search_country/repository/search_country_repository.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';
import 'package:serach_country/presentation/routes/router_observer.dart';

import 'infrastructure/core/https/http.dart';


GetIt locator = GetIt.instance;

void setupLocator(){

  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => RouterObserver(),);
  locator.registerLazySingleton(() => HttpService(interceptors: []),);
  locator.registerLazySingleton(() => SearchCountryQuery());
  locator.registerLazySingleton(() => SearchCountryRemoteDataSource(httpService:  locator<HttpService>(),searchCountryQuery: locator<SearchCountryQuery>(),));
  locator.registerLazySingleton(() => SearchCountryRepository(searchCountryRemoteDataSource: locator<SearchCountryRemoteDataSource>()));
  locator.registerLazySingleton(() => SearchCountryBloc(searchCountryRepository: locator<SearchCountryRepository>()),);

}


