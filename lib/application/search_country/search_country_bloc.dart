import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serach_country/domain/search_country/repository/i_search_country_repository.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';
import 'package:serach_country/infrastructure/search_country/dtos/filer_model.dart';

part 'search_country_bloc.freezed.dart';
part 'search_country_event.dart';
part 'search_country_state.dart';

class SearchCountryBloc extends Bloc<SearchCountryEvent,SearchCountryState>{

  final ISearchCountryRepository searchCountryRepository;

  SearchCountryBloc({required this.searchCountryRepository}):super(SearchCountryState.initial()){
    on<SearchCountryEvent>(_onEvent);
  }

  Future<void> _onEvent(SearchCountryEvent event, Emitter<SearchCountryState> emit)async{
    await event.map(
        initial: (_Initial value) {
          emit(SearchCountryState.initial());
        },
        fetchCountryList: (_FetchCountryList value)async {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
          final failureOrSuccess =  await searchCountryRepository.fetchCountryList();
          failureOrSuccess.fold(
                (l) {
                  emit(
                    state.copyWith(
                      isError: true,
                      isLoading: false,
                    ),
                  );
                },
                (r) {

                  List<FilterModel> filterList = [];
                  for(int i=0;i<r.length;i++){
                    if(r[i].language.isNotEmpty && filterList.indexWhere((element) => element.name == r[i].language[0].name)<1){
                      filterList.add(FilterModel(name: r[i].language[0].name, isSelected: false));
                    }
                  }

                  emit(
                    state.copyWith(
                      isLoading: false,
                      countryList: r,
                      filterList: filterList,
                    ),
                  );
                },
          );
        },
        searchCountryList: (_SearchCountryList value) {
          if(value.val.isEmpty){
            emit(
              state.copyWith(
                isSearching: false,
              ),
            );
          }else{
            List<CountryDto> list;
            list =  state.isFilterApplied?
            state.countryListForFilter.where((element) => element.name.toLowerCase().contains(value.val.toLowerCase())).toList():
            state.countryList.where((element) => element.name.toLowerCase().contains(value.val.toLowerCase())).toList();
            emit(
              state.copyWith(
                isSearching: true,
                countryListForSearch: list,
              ),
            );
          }
        },
        changeFilterCheckBox: (_ChangeFilterCheckBox value) {
          state.filterList[value.index].isSelected = !state.filterList[value.index].isSelected;
          emit(
            state.copyWith(
              filterList: state.filterList,
              isToggling: !state.isToggling,
            ),
          );
        },
        clearFilterCheckBox: (_ClearFilterCheckBox value) {
          for(int i=0;i<state.filterList.length;i++){
            state.filterList[i].isSelected = false;
          }
          emit(
            state.copyWith(
              isFilterApplied: false,
              filterList: state.filterList,
            ),
          );
        },
        filterCountryList: (_FilterCountryList value) {
          List<CountryDto> list = state.countryList.where((element) => element.language.isNotEmpty && state.filterList.indexWhere((element1) => element1.isSelected && element1.name.contains(element.language[0].name))>-1).toList();
          emit(
            state.copyWith(
              isFilterApplied: true,
              countryListForFilter: list,
            ),
          );
        },
    );
  }

}