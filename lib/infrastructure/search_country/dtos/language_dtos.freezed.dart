// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageDto _$LanguageDtoFromJson(Map<String, dynamic> json) {
  return _LanguageDto.fromJson(json);
}

/// @nodoc
mixin _$LanguageDto {
  @JsonKey(name: 'code', defaultValue: '')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'native', defaultValue: '')
  String get native => throw _privateConstructorUsedError;
  @JsonKey(name: 'rtl', defaultValue: false)
  bool get rtl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageDtoCopyWith<LanguageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageDtoCopyWith<$Res> {
  factory $LanguageDtoCopyWith(
          LanguageDto value, $Res Function(LanguageDto) then) =
      _$LanguageDtoCopyWithImpl<$Res, LanguageDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code', defaultValue: '') String code,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'native', defaultValue: '') String native,
      @JsonKey(name: 'rtl', defaultValue: false) bool rtl});
}

/// @nodoc
class _$LanguageDtoCopyWithImpl<$Res, $Val extends LanguageDto>
    implements $LanguageDtoCopyWith<$Res> {
  _$LanguageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? native = null,
    Object? rtl = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      rtl: null == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageDtoCopyWith<$Res>
    implements $LanguageDtoCopyWith<$Res> {
  factory _$$_LanguageDtoCopyWith(
          _$_LanguageDto value, $Res Function(_$_LanguageDto) then) =
      __$$_LanguageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code', defaultValue: '') String code,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'native', defaultValue: '') String native,
      @JsonKey(name: 'rtl', defaultValue: false) bool rtl});
}

/// @nodoc
class __$$_LanguageDtoCopyWithImpl<$Res>
    extends _$LanguageDtoCopyWithImpl<$Res, _$_LanguageDto>
    implements _$$_LanguageDtoCopyWith<$Res> {
  __$$_LanguageDtoCopyWithImpl(
      _$_LanguageDto _value, $Res Function(_$_LanguageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? native = null,
    Object? rtl = null,
  }) {
    return _then(_$_LanguageDto(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      rtl: null == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageDto extends _LanguageDto {
  const _$_LanguageDto(
      {@JsonKey(name: 'code', defaultValue: '') required this.code,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'native', defaultValue: '') required this.native,
      @JsonKey(name: 'rtl', defaultValue: false) required this.rtl})
      : super._();

  factory _$_LanguageDto.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageDtoFromJson(json);

  @override
  @JsonKey(name: 'code', defaultValue: '')
  final String code;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'native', defaultValue: '')
  final String native;
  @override
  @JsonKey(name: 'rtl', defaultValue: false)
  final bool rtl;

  @override
  String toString() {
    return 'LanguageDto(code: $code, name: $name, native: $native, rtl: $rtl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.rtl, rtl) || other.rtl == rtl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, native, rtl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageDtoCopyWith<_$_LanguageDto> get copyWith =>
      __$$_LanguageDtoCopyWithImpl<_$_LanguageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageDtoToJson(
      this,
    );
  }
}

abstract class _LanguageDto extends LanguageDto {
  const factory _LanguageDto(
      {@JsonKey(name: 'code', defaultValue: '')
          required final String code,
      @JsonKey(name: 'name', defaultValue: '')
          required final String name,
      @JsonKey(name: 'native', defaultValue: '')
          required final String native,
      @JsonKey(name: 'rtl', defaultValue: false)
          required final bool rtl}) = _$_LanguageDto;
  const _LanguageDto._() : super._();

  factory _LanguageDto.fromJson(Map<String, dynamic> json) =
      _$_LanguageDto.fromJson;

  @override
  @JsonKey(name: 'code', defaultValue: '')
  String get code;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'native', defaultValue: '')
  String get native;
  @override
  @JsonKey(name: 'rtl', defaultValue: false)
  bool get rtl;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageDtoCopyWith<_$_LanguageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
