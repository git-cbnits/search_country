import 'package:dartz/dartz.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';

import '../../core/api_failures.dart';


abstract class ISearchCountryRepository{
  Future<Either<ApiFailure, List<CountryDto>>> fetchCountryList();
}