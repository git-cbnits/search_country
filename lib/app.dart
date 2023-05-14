import 'package:flutter/cupertino.dart';

import 'locator.dart';

Future<void> initialSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
}