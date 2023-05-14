import 'package:dartz/dartz.dart';
import 'package:serach_country/domain/core/api_failures.dart';
import 'package:serach_country/domain/search_country/repository/i_search_country_repository.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';

import '../datasource/search_country_remote.dart';



class SearchCountryRepository implements ISearchCountryRepository{
  final SearchCountryRemoteDataSource searchCountryRemoteDataSource;

  SearchCountryRepository({required this.searchCountryRemoteDataSource,});

  @override
  Future<Either<ApiFailure, List<CountryDto>>> fetchCountryList() async{
    try {
      final response = await searchCountryRemoteDataSource.fetchList();
      return Right(response);
    } catch (e) {
      return Left(ApiFailure.other(e.toString()));
    }
  }

}