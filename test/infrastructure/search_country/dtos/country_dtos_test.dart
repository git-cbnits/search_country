import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';

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
      final configs = CountryDto.fromDomain(CountryDto.fromJson(
        data['data']['countries'][0],
      ).toDomain());

      expect(configs.name, 'Andorra');
    });

    test('Test tojson', () {
      final configs = CountryDto.fromDomain(CountryDto.fromJson(
        data['data']['countries'][0],
      ).toDomain()).toJson();

      expect(configs['name'], 'Andorra');
    });

  });
}
