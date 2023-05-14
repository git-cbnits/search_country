part of 'search_country_bloc.dart';

@freezed
class SearchCountryState with _$SearchCountryState{

  const factory SearchCountryState({
    required List<CountryDto> countryList,
    required List<CountryDto> countryListForSearch,
    required List<CountryDto> countryListForFilter,
    required List<FilterModel> filterList,
    required bool isToggling,
    required bool isSearching,
    required bool isFilterApplied,
    required bool isLoading,
    required bool isError,
  }) = _SearchCountry;

  factory SearchCountryState.initial() => const SearchCountryState(countryList: [], countryListForSearch: [],isLoading: false, isError: false,isSearching: false, countryListForFilter: [], isFilterApplied: false, filterList: [], isToggling: false);
}