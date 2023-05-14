import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serach_country/infrastructure/search_country/dtos/language_dtos.dart';

part 'country_dtos.freezed.dart';

part 'country_dtos.g.dart';

@freezed
class CountryDto with _$CountryDto {
  const CountryDto._();

  const factory CountryDto({
    @JsonKey(name: 'code', defaultValue: '') required String code,
    @JsonKey(name: 'currency', defaultValue: '') required String currency,
    @JsonKey(name: 'emoji', defaultValue: '') required String emoji,
    @JsonKey(name: 'emojiU', defaultValue: '') required String emojiU,
    @JsonKey(name: 'languages', defaultValue: []) required List<LanguageDto> language,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'native', defaultValue: '') required String native,
    @JsonKey(name: 'phone', defaultValue: '') required String phone,
  }) = _CountryDto;

  CountryDto toDomain() {
    return CountryDto(
      code: code,
      currency: currency,
      emoji: emoji,
      emojiU: emojiU,
      language: language,
      name: name,
      native: native,
      phone: phone,
    );
  }

  factory CountryDto.fromDomain(CountryDto countryDto,) {
    return CountryDto(
      code: countryDto.code,
      currency: countryDto.currency,
      emoji: countryDto.emoji,
      emojiU: countryDto.emojiU,
      language: countryDto.language,
      name: countryDto.name,
      native: countryDto.native,
      phone: countryDto.phone,
    );
  }

  factory CountryDto.fromJson(Map<String, dynamic> json) => _$CountryDtoFromJson(json);
}

