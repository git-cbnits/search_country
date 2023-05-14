// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageDto _$$_LanguageDtoFromJson(Map<String, dynamic> json) =>
    _$_LanguageDto(
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      native: json['native'] as String? ?? '',
      rtl: json['rtl'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LanguageDtoToJson(_$_LanguageDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'native': instance.native,
      'rtl': instance.rtl,
    };
