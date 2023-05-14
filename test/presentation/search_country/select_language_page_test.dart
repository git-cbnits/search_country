import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:serach_country/application/search_country/search_country_bloc.dart';
import 'package:serach_country/infrastructure/search_country/dtos/filer_model.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';
import 'package:serach_country/presentation/search_country/select_language_page.dart';

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

  group('Select Language Test', () {

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
        child: const SelectLanguagePage(),
      );
    }

    testWidgets('=> when item is selected', (tester) async{
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial().copyWith(
        filterList: [
          FilterModel(name: 'English', isSelected: false),
          FilterModel(name: 'Hindi', isSelected: true),
        ],
      ));
      await tester.pumpWidget(getWidget());
      final selectLanguageText = find.text('Select Language');
      expect(selectLanguageText, findsOneWidget);
      final filterByLanguageText = find.text('Filter by language');
      expect(filterByLanguageText, findsOneWidget);
      final englishText = find.text('English');
      expect(englishText, findsOneWidget);
      final checkBox = find.byType(Checkbox);
      expect(checkBox, findsNWidgets(2));
      await tester.tap(checkBox.first);
      final applyButton = find.text('Apply');
      expect(applyButton, findsOneWidget);
      await tester.tap(applyButton);
    });

    testWidgets('=> when item is not selected', (tester) async{
      when(() => searchCountryBlocMock.state).thenReturn(SearchCountryState.initial().copyWith(
        filterList: [
          FilterModel(name: 'English', isSelected: false),
          FilterModel(name: 'Hindi', isSelected: false),
        ],
      ));
      await tester.pumpWidget(getWidget());
      final applyButton = find.text('Apply');
      expect(applyButton, findsOneWidget);
      await tester.tap(applyButton);
    });

  });

}
