import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serach_country/infrastructure/search_country/dtos/language_dtos.dart';

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
      final configs = LanguageDto.fromDomain(LanguageDto.fromJson(
        data['data']['countries'][0]['languages'][0],
      ).toDomain());

      expect(configs.name, 'Catalan');
    });

    test('Test tojson', () {
      final configs = LanguageDto.fromDomain(LanguageDto.fromJson(
        data['data']['countries'][0]['languages'][0],
      ).toDomain()).toJson();

      expect(configs['name'], 'Catalan');
    });

  });
}
