import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:serach_country/domain/core/exception.dart';
import 'package:serach_country/infrastructure/core/https/http.dart';
import 'package:serach_country/infrastructure/search_country/datasource/search_country_remote.dart';
import 'package:serach_country/infrastructure/search_country/datasource/serach_sountry_query.dart';
import 'package:serach_country/infrastructure/search_country/dtos/search_country_dtos.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://countries.trevorblades.com',
    ),
  );
  final dioAdapter = DioAdapter(dio: dio);
  final service = HttpService.mockDio(dio);
  final remoteDataSource = SearchCountryRemoteDataSource(
    httpService: service,
    searchCountryQuery: SearchCountryQuery(),
  );

  group('Search Country Remote Test', () {
    late dynamic fakeJson;

      setUpAll(() async {
        fakeJson = json.decode(
          await rootBundle.loadString('assets/json/search_country_response.json'),
        );
      });

      test('when status is 200', () async {
          dioAdapter.onPost(
            '/graphql', (server) => server.reply(
              200,
              fakeJson,
              delay: const Duration(seconds: 1),
            ),
            headers: {'Content-Type': 'application/json; charset=utf-8'},
            data: jsonEncode({
              'query': remoteDataSource.searchCountryQuery.getAllListQuery(),
            }),
          );

          final result = await remoteDataSource.fetchList();

          expect(
            result,
            SearchCountryDto.fromJson(fakeJson['data']).countries,
          );
        },
      );

    test('when status is not 200', () async {
      dioAdapter.onPost(
        '/graphql', (server) => server.reply(
        204,
        {},
        delay: const Duration(seconds: 1),
      ),
        headers: {'Content-Type': 'application/json; charset=utf-8'},
        data: jsonEncode({
          'query': remoteDataSource.searchCountryQuery.getAllListQuery(),
        }),
      );

      await remoteDataSource.fetchList().onError((error, _) {
        expect(error, isA<ServerException>());
        return [];
      });

    },
    );

    test('when status is not 200 and with error', () async {
      dioAdapter.onPost(
        '/graphql', (server) => server.reply(
        200,
        {
          'data': null,
          'errors': [
            {'message': 'fake-error'}
          ],
        },
        delay: const Duration(seconds: 1),
      ),
        headers: {'Content-Type': 'application/json; charset=utf-8'},
        data: jsonEncode({
          'query': remoteDataSource.searchCountryQuery.getAllListQuery(),
        }),
      );

      await remoteDataSource.fetchList().onError((error, _) {
        expect(error, isA<ServerException>());
        return [];
      });

    },
    );

    },
  );

}