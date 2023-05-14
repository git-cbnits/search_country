import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serach_country/application/search_country/search_country_bloc.dart';
import 'package:serach_country/domain/core/api_failures.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';
import 'package:serach_country/infrastructure/search_country/dtos/filer_model.dart';
import 'package:serach_country/infrastructure/search_country/repository/search_country_repository.dart';

class SearchCountryRepositoryMock extends Mock implements SearchCountryRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final SearchCountryRepository searchCountryMockRepo = SearchCountryRepositoryMock();
  final filterModel = FilterModel(name: 'Hindi', isSelected: false);

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
  });

  group('Search Country Bloc', () {

    blocTest('Initial',
        build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
        act: (SearchCountryBloc bloc) {
          bloc.add(const SearchCountryEvent.initial());
        },
        expect: () => [SearchCountryState.initial()],
    );

    blocTest('fetchCountryList failure',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      setUp: () {
        when(() => searchCountryMockRepo.fetchCountryList()).
        thenAnswer((invocation) async => const Left(ApiFailure.other('error')));
      },
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.fetchCountryList());
      },
      expect: () => [
        SearchCountryState.initial().copyWith(
          isLoading: true,
        ),
        SearchCountryState.initial().copyWith(
          isLoading: false,
          isError: true,
        ),
      ],
    );

    blocTest('fetchCountryList success',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      setUp: () {
        when(() => searchCountryMockRepo.fetchCountryList()).
        thenAnswer((invocation) async => const Right([
          CountryDto(
              name: 'India',
              phone: '91',
              native: 'ind',
              emojiU: '',
              emoji: '',
              currency: 'INR',
              code: '91',
              language: []
          ),
        ]));
      },
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.fetchCountryList());
      },
      expect: () => [
        SearchCountryState.initial().copyWith(
          isLoading: true,
        ),
        SearchCountryState.initial().copyWith(
          isLoading: false,
          countryList: [
            const CountryDto(
                name: 'India',
                phone: '91',
                native: 'ind',
                emojiU: '',
                emoji: '',
                currency: 'INR',
                code: '91',
                language: []
            ),
          ],
        ),
      ],
    );

    blocTest('searchCountryList when val is empty',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.searchCountryList(''));
      },
      expect: () => [
        SearchCountryState.initial().copyWith(
          isSearching: false,
        ),
      ],
    );

    blocTest('searchCountryList when isFilterApplied true',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      seed: () => SearchCountryState.initial().copyWith(
        isFilterApplied: true,
      ),
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.searchCountryList('ind'));
      },
      expect: () => [
        SearchCountryState.initial().copyWith(
          isSearching: true,
          isFilterApplied: true,
          countryListForSearch: []
        ),
      ],
    );

    blocTest('searchCountryList when isFilterApplied false',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.searchCountryList('ind'));
      },
      expect: () => [
        SearchCountryState.initial().copyWith(
            isSearching: true,
            countryListForSearch: []
        ),
      ],
    );

    blocTest('changeFilterCheckBox',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      seed: () => SearchCountryState.initial().copyWith(
        filterList: [
          filterModel
        ],
      ),
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.changeFilterCheckBox(0));
      },
      expect: () => [
        SearchCountryState.initial().copyWith(
            filterList: [
              filterModel
            ],
            isToggling: true,
        ),
      ],
    );

    blocTest('clearFilterCheckBox',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      seed: () => SearchCountryState.initial().copyWith(
        filterList: [
          filterModel
        ],
      ),
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.clearFilterCheckBox());
      },
      expect: () => [],
    );

    blocTest('filterCountryList',
      build: () => SearchCountryBloc(searchCountryRepository: searchCountryMockRepo),
      act: (SearchCountryBloc bloc) {
        bloc.add(const SearchCountryEvent.filterCountryList());
      },
      expect: () => [
        SearchCountryState.initial().copyWith(
          isFilterApplied: true,
        ),
      ],
    );

  });
}