// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDto _$$_CountryDtoFromJson(Map<String, dynamic> json) =>
    _$_CountryDto(
      code: json['code'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      emoji: json['emoji'] as String? ?? '',
      emojiU: json['emojiU'] as String? ?? '',
      language: (json['languages'] as List<dynamic>?)
              ?.map((e) => LanguageDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String? ?? '',
      native: json['native'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
    );

Map<String, dynamic> _$$_CountryDtoToJson(_$_CountryDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'currency': instance.currency,
      'emoji': instance.emoji,
      'emojiU': instance.emojiU,
      'languages': instance.language,
      'name': instance.name,
      'native': instance.native,
      'phone': instance.phone,
    };
