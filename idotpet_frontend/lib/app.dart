import 'package:flutter_localizations/flutter_localizations.dart';

import 'config/app_bindings.dart';
import 'config/app_routes.dart' as routes;
//import 'config/app_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/app_routes.dart';

//Link do protótipo: https://xd.adobe.com/view/4ef2b255-fa87-4ca4-8aec-1b7f0262d238-1ba1/
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GetMaterialApp(
      title: 'ACMS+',
      initialRoute: AppRoutes.loginPath(),
      getPages: routes.AppRoutes.pages,
      initialBinding: AppBindings(),
      supportedLocales: const [
        Locale('pt'),
        Locale('en'),
        Locale('es'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
