// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../infrastructure/search_country/dtos/country_dtos.dart' as _i6;
import '../search_country/country_details.dart' as _i2;
import '../search_country/country_list.dart' as _i1;
import '../search_country/select_language_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CountryListRoute.name: (routeData) {
      final args = routeData.argsAs<CountryListRouteArgs>(
          orElse: () => const CountryListRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.CountryList(key: args.key),
      );
    },
    CountryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CountryDetailsRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CountryDetails(
          key: args.key,
          details: args.details,
        ),
      );
    },
    SelectLanguagePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SelectLanguagePage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'home',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          CountryListRoute.name,
          path: 'home',
        ),
        _i4.RouteConfig(
          CountryDetailsRoute.name,
          path: 'detailsPage',
        ),
        _i4.RouteConfig(
          SelectLanguagePageRoute.name,
          path: 'selectLanguage',
        ),
      ];
}

/// generated route for
/// [_i1.CountryList]
class CountryListRoute extends _i4.PageRouteInfo<CountryListRouteArgs> {
  CountryListRoute({_i5.Key? key})
      : super(
          CountryListRoute.name,
          path: 'home',
          args: CountryListRouteArgs(key: key),
        );

  static const String name = 'CountryListRoute';
}

class CountryListRouteArgs {
  const CountryListRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CountryListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CountryDetails]
class CountryDetailsRoute extends _i4.PageRouteInfo<CountryDetailsRouteArgs> {
  CountryDetailsRoute({
    _i5.Key? key,
    required _i6.CountryDto details,
  }) : super(
          CountryDetailsRoute.name,
          path: 'detailsPage',
          args: CountryDetailsRouteArgs(
            key: key,
            details: details,
          ),
        );

  static const String name = 'CountryDetailsRoute';
}

class CountryDetailsRouteArgs {
  const CountryDetailsRouteArgs({
    this.key,
    required this.details,
  });

  final _i5.Key? key;

  final _i6.CountryDto details;

  @override
  String toString() {
    return 'CountryDetailsRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [_i3.SelectLanguagePage]
class SelectLanguagePageRoute extends _i4.PageRouteInfo<void> {
  const SelectLanguagePageRoute()
      : super(
          SelectLanguagePageRoute.name,
          path: 'selectLanguage',
        );

  static const String name = 'SelectLanguagePageRoute';
}
