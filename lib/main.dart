import 'package:femmechat_app/ui/shared/app_colors.dart' as prefix0;
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
        accentColor: prefix0.appPrimaryColor,
        primaryColor: prefix0.appPrimaryColor,
      ),
      home: OnboardingScreen(),
    );
  }
}
