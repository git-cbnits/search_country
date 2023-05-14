import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serach_country/infrastructure/search_country/dtos/search_country_dtos.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late dynamic data;
  group('Test SearchCountry Dtos ', () {
    setUp(() async {
      data = json.decode(
        await rootBundle.loadString('assets/json/search_country_response.json'),
      );
    });

    test('Test fromDomain', () {
      final configs =SearchCountryDto.fromDomain(SearchCountryDto.fromJson(
        data['data'],
      ).toDomain());

      expect(configs.countries.length, 250);
    });

    test('Test tojson', () {
      final configs =SearchCountryDto.fromDomain(SearchCountryDto.fromJson(
        data['data'],
      ).toDomain()).toJson();

      expect(configs['countries'].length, 250);
    });

  });
}
