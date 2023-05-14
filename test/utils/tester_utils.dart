import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';


import 'material_frame_wrapper.dart';
import 'widget_utils.dart';

class TesterUtils {
  static Future setUpLocalizationWrapper({
    required WidgetTester tester,
    required Widget home,
    required Locale locale,
    bool isAutoRouteEnabled = false,
    AppRouter? autoRouterMock,
    List<BlocProvider<StateStreamableSource<Object?>>>? providers,
    List<Locale>? supportedLocales,
  }) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(
        isAutoRouteEnabled ?
        MaterialFrameWrapper(
          usingLocalization: true,
          child: WidgetUtils.getScopedWidget(
            autoRouterMock: autoRouterMock!,
            providers: providers!,
            child: home,
          ),
        ):
        MaterialFrameWrapper(
          usingLocalization: true,
          child: home,
        ),
      );
      await Future.delayed(const Duration(seconds: 1), () {});
    });

    await tester.pump();
  }
}
