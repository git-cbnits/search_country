import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';

import 'material_frame_wrapper.dart';
import 'multi_bloc_provider_frame_wrapper.dart';

class WidgetUtils {
  static StackRouterScope getScopedWidget(
      {required AppRouter autoRouterMock,
      List<BlocProvider> providers = const <BlocProvider>[],
      required Widget child}) {


    return StackRouterScope(
      controller: autoRouterMock,
      stateHash: 0,
      child: providers.isNotEmpty
          ? MultiBlocProviderFrameWrapper(
              providers: providers,
              child: child,
            )
          : MaterialFrameWrapper(
              child: child,
            ),
    );
  }
}
