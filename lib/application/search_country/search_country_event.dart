part of 'search_country_bloc.dart';

@freezed
class SearchCountryEvent with _$SearchCountryEvent{
  const factory SearchCountryEvent.initial() = _Initial;
  const factory SearchCountryEvent.fetchCountryList() = _FetchCountryList;
  const factory SearchCountryEvent.searchCountryList(String val) = _SearchCountryList;
  const factory SearchCountryEvent.changeFilterCheckBox(int index) = _ChangeFilterCheckBox;
  const factory SearchCountryEvent.clearFilterCheckBox() = _ClearFilterCheckBox;
  const factory SearchCountryEvent.filterCountryList() = _FilterCountryList;
}