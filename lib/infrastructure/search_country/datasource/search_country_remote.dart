import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:serach_country/infrastructure/search_country/datasource/serach_sountry_query.dart';
import 'package:serach_country/infrastructure/search_country/dtos/search_country_dtos.dart';

import '../../../domain/core/exception.dart';
import '../../core/https/http.dart';
import '../dtos/country_dtos.dart';

class SearchCountryRemoteDataSource{
  HttpService httpService;
  SearchCountryQuery searchCountryQuery;

  SearchCountryRemoteDataSource({
    required this.httpService,
    required this.searchCountryQuery,
  });

  Future<List<CountryDto>> fetchList()async{

    final response = await httpService.request(
      method: 'POST',
      url: '/graphql',
      data: jsonEncode({
        'query': searchCountryQuery.getAllListQuery(),
      }),
    );
    _exceptionChecker(res: response);

    var data = response.data;
    log(data.toString());
    List<CountryDto> countryList = SearchCountryDto.fromJson(data['data']).countries;
    return countryList;
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.data['errors'] != null && res.data['errors'].isNotEmpty) {
      throw ServerException(message: res.data['errors'][0]['message']);
    } else if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}