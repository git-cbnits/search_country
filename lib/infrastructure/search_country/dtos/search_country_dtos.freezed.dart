// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_country_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchCountryDto _$SearchCountryDtoFromJson(Map<String, dynamic> json) {
  return _SearchCountryDto.fromJson(json);
}

/// @nodoc
mixin _$SearchCountryDto {
  @JsonKey(name: 'countries', defaultValue: [])
  List<CountryDto> get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCountryDtoCopyWith<SearchCountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCountryDtoCopyWith<$Res> {
  factory $SearchCountryDtoCopyWith(
          SearchCountryDto value, $Res Function(SearchCountryDto) then) =
      _$SearchCountryDtoCopyWithImpl<$Res, SearchCountryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'countries', defaultValue: [])
          List<CountryDto> countries});
}

/// @nodoc
class _$SearchCountryDtoCopyWithImpl<$Res, $Val extends SearchCountryDto>
    implements $SearchCountryDtoCopyWith<$Res> {
  _$SearchCountryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchCountryDtoCopyWith<$Res>
    implements $SearchCountryDtoCopyWith<$Res> {
  factory _$$_SearchCountryDtoCopyWith(
          _$_SearchCountryDto value, $Res Function(_$_SearchCountryDto) then) =
      __$$_SearchCountryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'countries', defaultValue: [])
          List<CountryDto> countries});
}

/// @nodoc
class __$$_SearchCountryDtoCopyWithImpl<$Res>
    extends _$SearchCountryDtoCopyWithImpl<$Res, _$_SearchCountryDto>
    implements _$$_SearchCountryDtoCopyWith<$Res> {
  __$$_SearchCountryDtoCopyWithImpl(
      _$_SearchCountryDto _value, $Res Function(_$_SearchCountryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$_SearchCountryDto(
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchCountryDto extends _SearchCountryDto {
  const _$_SearchCountryDto(
      {@JsonKey(name: 'countries', defaultValue: [])
          required final List<CountryDto> countries})
      : _countries = countries,
        super._();

  factory _$_SearchCountryDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCountryDtoFromJson(json);

  final List<CountryDto> _countries;
  @override
  @JsonKey(name: 'countries', defaultValue: [])
  List<CountryDto> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'SearchCountryDto(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCountryDto &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCountryDtoCopyWith<_$_SearchCountryDto> get copyWith =>
      __$$_SearchCountryDtoCopyWithImpl<_$_SearchCountryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCountryDtoToJson(
      this,
    );
  }
}

abstract class _SearchCountryDto extends SearchCountryDto {
  const factory _SearchCountryDto(
      {@JsonKey(name: 'countries', defaultValue: [])
          required final List<CountryDto> countries}) = _$_SearchCountryDto;
  const _SearchCountryDto._() : super._();

  factory _SearchCountryDto.fromJson(Map<String, dynamic> json) =
      _$_SearchCountryDto.fromJson;

  @override
  @JsonKey(name: 'countries', defaultValue: [])
  List<CountryDto> get countries;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCountryDtoCopyWith<_$_SearchCountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
