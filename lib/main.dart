import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serach_country/application/search_country/search_country_bloc.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';
import 'package:serach_country/presentation/routes/router_observer.dart';

import 'app.dart';
import 'locator.dart';

Future<void> main() async{
  await initialSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchCountryBloc>(
          create: (context) => locator<SearchCountryBloc>()..add(const SearchCountryEvent.fetchCountryList()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: AutoRouterDelegate(
          router,
          navigatorObservers: () => [
            locator<RouterObserver>(),
          ],
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}

