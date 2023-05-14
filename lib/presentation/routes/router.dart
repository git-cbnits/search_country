//ignore_for_file: unused-files
import 'package:auto_route/auto_route.dart';
import 'package:serach_country/presentation/search_country/country_details.dart';
import 'package:serach_country/presentation/search_country/country_list.dart';
import 'package:serach_country/presentation/search_country/select_language_page.dart';

//ignore: unused-code
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Tab',
  routes: <AutoRoute>[
    AutoRoute(path: 'home', page: CountryList, initial: true),
    AutoRoute(path: 'detailsPage', page: CountryDetails,),
    AutoRoute(path: 'selectLanguage', page: SelectLanguagePage,),
  ],
)
class $AppRouter {}
