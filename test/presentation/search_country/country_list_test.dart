import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serach_country/application/search_country/search_country_bloc.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';
import 'package:serach_country/presentation/search_country/country_list.dart';

import '../../utils/widget_utils.dart';

class SearchCountryMock extends MockBloc<SearchCountryEvent, SearchCountryState> implements SearchCountryBloc {}

final locator = GetIt.instance;

void main(){
  TestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  late SearchCountryBloc searchCountryBlocMock;
  late AppRouter autoRouterMock;

  setUpAll(() {
    locator.registerLazySingleton(() => AppRouter());
  });

  group('Country List Test', () {

    setUp(() async {
      autoRouterMock = locator<AppRouter>();
      searchCountryBlocMock = SearchCountryMock();
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial());
    });

    StackRouterScope getWidget() {
      return WidgetUtils.getScopedWidget(
        autoRouterMock: autoRouterMock,
        providers: [
          BlocProvider<SearchCountryBloc>(create: (context) => searchCountryBlocMock),
        ],
        child: CountryList(),
      );
    }
    
    testWidgets('=> When isLoading is true', (tester) async{
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial().copyWith(
        isLoading: true,
      ));
      await tester.pumpWidget(getWidget());
      final loader = find.byType(CircularProgressIndicator);
      expect(loader, findsOneWidget);
    });

    testWidgets('=> When isError is true', (tester) async{
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial().copyWith(
        isError: true,
      ));
      await tester.pumpWidget(getWidget());
      final text = find.text('Something went wrong please try again!');
      expect(text, findsOneWidget);
    });

    testWidgets('=> When list is empty and isLoading false', (tester) async{
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial().copyWith(
        isLoading: false,
        countryList: [],
      ));
      await tester.pumpWidget(getWidget());
      final text = find.text('No country found');
      expect(text, findsOneWidget);
    });

    testWidgets('=> When list is empty and isSearching true', (tester) async{
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial().copyWith(
        isSearching: true,
        countryListForSearch: [],
      ));
      await tester.pumpWidget(getWidget());
      final text = find.text('No country found');
      expect(text, findsOneWidget);
    });

    testWidgets('=> When list is not empty and isLoading false', (tester) async{
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial().copyWith(
        isFilterApplied: true,
        countryListForFilter: [
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
      ));
      await tester.pumpWidget(getWidget());
      final text = find.text('Filter By Language');
      expect(text, findsOneWidget);
      final clearIcon = find.byIcon(Icons.clear);
      expect(clearIcon, findsOneWidget);
      await tester.tap(clearIcon);
      final textField = find.byType(TextField);
      expect(textField, findsOneWidget);
      await tester.enterText(textField, 'india');
      final listTile = find.byType(ListTile);
      await tester.tap(listTile.last);
      await tester.tap(text);
    });

  });

}