import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';
import 'package:serach_country/presentation/search_country/country_details.dart';

import '../../utils/widget_utils.dart';

final locator = GetIt.instance;

void main(){
  TestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  late AppRouter autoRouterMock;

  setUpAll(() {
    locator.registerLazySingleton(() => AppRouter());
  });

  group('Country Details Test', () {

    setUp(() async {
      autoRouterMock = locator<AppRouter>();
    });

    StackRouterScope getWidget() {
      return WidgetUtils.getScopedWidget(
        autoRouterMock: autoRouterMock,
        child: const CountryDetails(
            details:  CountryDto(
                name: 'India',
                phone: '91',
                native: 'ind',
                emojiU: '',
                emoji: '',
                currency: 'INR',
                code: '91',
                language: []
            ),
        ),
      );
    }

    testWidgets('=> When isLoading is true', (tester) async{
      await tester.pumpWidget(getWidget());
      final countryDetailsText = find.text('Country Details');
      expect(countryDetailsText, findsOneWidget);
      final countryNameText = find.text('India');
      expect(countryNameText, findsOneWidget);
    });

  });

}