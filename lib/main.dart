import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/router.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart' as mytheme;
import 'package:femmechat_app/ui/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: mytheme.appPrimaryColor,
        primaryColor: mytheme.appPrimaryColor,
      ),
      initialRoute: RoutePaths.Onboarding,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
