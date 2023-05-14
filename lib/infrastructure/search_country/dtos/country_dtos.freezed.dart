// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) {
  return _CountryDto.fromJson(json);
}

/// @nodoc
mixin _$CountryDto {
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency', defaultValue: '')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'emoji', defaultValue: '')
  String get emoji => throw _privateConstructorUsedError;
  @JsonKey(name: 'emojiU', defaultValue: '')
  String get emojiU => throw _privateConstructorUsedError;
  @JsonKey(name: 'languages', defaultValue: [])
  List<LanguageDto> get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'native', defaultValue: '')
  String get native => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone', defaultValue: '')
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDtoCopyWith<CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDtoCopyWith<$Res> {
  factory $CountryDtoCopyWith(
          CountryDto value, $Res Function(CountryDto) then) =
      _$CountryDtoCopyWithImpl<$Res, CountryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code', defaultValue: '') String code,
      @JsonKey(name: 'currency', defaultValue: '') String currency,
      @JsonKey(name: 'emoji', defaultValue: '') String emoji,
      @JsonKey(name: 'emojiU', defaultValue: '') String emojiU,
      @JsonKey(name: 'languages', defaultValue: []) List<LanguageDto> language,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'native', defaultValue: '') String native,
      @JsonKey(name: 'phone', defaultValue: '') String phone});
}

/// @nodoc
class _$CountryDtoCopyWithImpl<$Res, $Val extends CountryDto>
    implements $CountryDtoCopyWith<$Res> {
  _$CountryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currency = null,
    Object? emoji = null,
    Object? emojiU = null,
    Object? language = null,
    Object? name = null,
    Object? native = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      emojiU: null == emojiU
          ? _value.emojiU
          : emojiU // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<LanguageDto>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryDtoCopyWith<$Res>
    implements $CountryDtoCopyWith<$Res> {
  factory _$$_CountryDtoCopyWith(
          _$_CountryDto value, $Res Function(_$_CountryDto) then) =
      __$$_CountryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code', defaultValue: '') String code,
      @JsonKey(name: 'currency', defaultValue: '') String currency,
      @JsonKey(name: 'emoji', defaultValue: '') String emoji,
      @JsonKey(name: 'emojiU', defaultValue: '') String emojiU,
      @JsonKey(name: 'languages', defaultValue: []) List<LanguageDto> language,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'native', defaultValue: '') String native,
      @JsonKey(name: 'phone', defaultValue: '') String phone});
}

/// @nodoc
class __$$_CountryDtoCopyWithImpl<$Res>
    extends _$CountryDtoCopyWithImpl<$Res, _$_CountryDto>
    implements _$$_CountryDtoCopyWith<$Res> {
  __$$_CountryDtoCopyWithImpl(
      _$_CountryDto _value, $Res Function(_$_CountryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currency = null,
    Object? emoji = null,
    Object? emojiU = null,
    Object? language = null,
    Object? name = null,
    Object? native = null,
    Object? phone = null,
  }) {
    return _then(_$_CountryDto(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      emojiU: null == emojiU
          ? _value.emojiU
          : emojiU // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<LanguageDto>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDto extends _CountryDto {
  const _$_CountryDto(
      {@JsonKey(name: 'code', defaultValue: '')
          required this.code,
      @JsonKey(name: 'currency', defaultValue: '')
          required this.currency,
      @JsonKey(name: 'emoji', defaultValue: '')
          required this.emoji,
      @JsonKey(name: 'emojiU', defaultValue: '')
          required this.emojiU,
      @JsonKey(name: 'languages', defaultValue: [])
          required final List<LanguageDto> language,
      @JsonKey(name: 'name', defaultValue: '')
          required this.name,
      @JsonKey(name: 'native', defaultValue: '')
          required this.native,
      @JsonKey(name: 'phone', defaultValue: '')
          required this.phone})
      : _language = language,
        super._();

  factory _$_CountryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDtoFromJson(json);

  @override
  @JsonKey(name: 'code', defaultValue: '')
  final String code;
  @override
  @JsonKey(name: 'currency', defaultValue: '')
  final String currency;
  @override
  @JsonKey(name: 'emoji', defaultValue: '')
  final String emoji;
  @override
  @JsonKey(name: 'emojiU', defaultValue: '')
  final String emojiU;
  final List<LanguageDto> _language;
  @override
  @JsonKey(name: 'languages', defaultValue: [])
  List<LanguageDto> get language {
    if (_language is EqualUnmodifiableListView) return _language;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_language);
  }

  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'native', defaultValue: '')
  final String native;
  @override
  @JsonKey(name: 'phone', defaultValue: '')
  final String phone;

  @override
  String toString() {
    return 'CountryDto(code: $code, currency: $currency, emoji: $emoji, emojiU: $emojiU, language: $language, name: $name, native: $native, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.emojiU, emojiU) || other.emojiU == emojiU) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, currency, emoji, emojiU,
      const DeepCollectionEquality().hash(_language), name, native, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryDtoCopyWith<_$_CountryDto> get copyWith =>
      __$$_CountryDtoCopyWithImpl<_$_CountryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDtoToJson(
      this,
    );
  }
}

abstract class _CountryDto extends CountryDto {
  const factory _CountryDto(
      {@JsonKey(name: 'code', defaultValue: '')
          required final String code,
      @JsonKey(name: 'currency', defaultValue: '')
          required final String currency,
      @JsonKey(name: 'emoji', defaultValue: '')
          required final String emoji,
      @JsonKey(name: 'emojiU', defaultValue: '')
          required final String emojiU,
      @JsonKey(name: 'languages', defaultValue: [])
          required final List<LanguageDto> language,
      @JsonKey(name: 'name', defaultValue: '')
          required final String name,
      @JsonKey(name: 'native', defaultValue: '')
          required final String native,
      @JsonKey(name: 'phone', defaultValue: '')
          required final String phone}) = _$_CountryDto;
  const _CountryDto._() : super._();

  factory _CountryDto.fromJson(Map<String, dynamic> json) =
      _$_CountryDto.fromJson;

  @override
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @JsonKey(name: 'currency', defaultValue: '')
  String get currency;
  @override
  @JsonKey(name: 'emoji', defaultValue: '')
  String get emoji;
  @override
  @JsonKey(name: 'emojiU', defaultValue: '')
  String get emojiU;
  @override
  @JsonKey(name: 'languages', defaultValue: [])
  List<LanguageDto> get language;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'native', defaultValue: '')
  String get native;
  @override
  @JsonKey(name: 'phone', defaultValue: '')
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDtoCopyWith<_$_CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
