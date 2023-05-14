import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_dtos.freezed.dart';

part 'language_dtos.g.dart';

@freezed
class LanguageDto with _$LanguageDto {
  const LanguageDto._();

  const factory LanguageDto({
    @JsonKey(name: 'code', defaultValue: '') required String code,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'native', defaultValue: '') required String native,
    @JsonKey(name: 'rtl', defaultValue: false) required bool rtl,
  }) = _LanguageDto;

  LanguageDto toDomain() {
    return LanguageDto(
      code: code,
      name: name,
      native: native,
      rtl: rtl,
    );
  }

  factory LanguageDto.fromDomain(LanguageDto languageDto,) {
    return LanguageDto(
      code: languageDto.code,
      name: languageDto.name,
      native: languageDto.native,
      rtl: languageDto.rtl,
    );
  }

  factory LanguageDto.fromJson(Map<String, dynamic> json) => _$LanguageDtoFromJson(json);
}

