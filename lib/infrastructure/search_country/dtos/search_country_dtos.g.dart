// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_country_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchCountryDto _$$_SearchCountryDtoFromJson(Map<String, dynamic> json) =>
    _$_SearchCountryDto(
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => CountryDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_SearchCountryDtoToJson(_$_SearchCountryDto instance) =>
    <String, dynamic>{
      'countries': instance.countries,
    };
