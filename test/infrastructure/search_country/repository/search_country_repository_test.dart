import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serach_country/domain/core/exception.dart';
import 'package:serach_country/infrastructure/search_country/datasource/search_country_remote.dart';
import 'package:serach_country/infrastructure/search_country/repository/search_country_repository.dart';

class SearchCountryRemoteDataSourceMock extends Mock implements SearchCountryRemoteDataSource {}

void main(){
  late SearchCountryRepository searchCountryRepository;
  late SearchCountryRemoteDataSource searchCountryRemoteDataSourceMock;

  setUpAll(() {
    searchCountryRemoteDataSourceMock = SearchCountryRemoteDataSourceMock();
    searchCountryRepository = SearchCountryRepository(searchCountryRemoteDataSource: searchCountryRemoteDataSourceMock);
  });

  group('Search Country Repository Test', () {
    test('when response is right', () async {
      when(() => searchCountryRemoteDataSourceMock.fetchList()).thenAnswer((invocation) async => []);

      final result = await searchCountryRepository.fetchCountryList();
      expect(
        result.isRight(),
        true,
      );
    });

    test('when response is left', () async {
      when(() => searchCountryRemoteDataSourceMock.fetchList()).thenThrow((invocation) async => MockException());

      final result = await searchCountryRepository.fetchCountryList();
      expect(
        result.isLeft(),
        true,
      );
    });
  });

}