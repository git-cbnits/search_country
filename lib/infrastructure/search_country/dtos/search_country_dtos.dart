import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';

part 'search_country_dtos.freezed.dart';

part 'search_country_dtos.g.dart';

@freezed
class SearchCountryDto with _$SearchCountryDto {
  const SearchCountryDto._();

  const factory SearchCountryDto({
    @JsonKey(name: 'countries', defaultValue: []) required List<CountryDto> countries,
  }) = _SearchCountryDto;

  SearchCountryDto toDomain() {
    return SearchCountryDto(
      countries: countries
    );
  }

  factory SearchCountryDto.fromDomain(SearchCountryDto searchCountryDto,) {
    return SearchCountryDto(
      countries: searchCountryDto.countries,
    );
  }

  factory SearchCountryDto.fromJson(Map<String, dynamic> json) => _$SearchCountryDtoFromJson(json);
}

