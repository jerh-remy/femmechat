import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/router.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart' as mytheme;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: mytheme.appPrimaryColorLight,
        primaryColor: mytheme.appPrimaryColor,
      ),
      initialRoute: RoutePaths.Onboarding,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
