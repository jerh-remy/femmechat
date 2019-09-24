import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/ui/views/get_started_view.dart';
import 'package:femmechat_app/ui/views/home_view.dart';
import 'package:femmechat_app/ui/views/login_view.dart';
import 'package:femmechat_app/ui/views/onboarding_screen.dart';
import 'package:femmechat_app/ui/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RoutePaths.GetStarted:
        return MaterialPageRoute(builder: (_) => GetStartedView());
      case RoutePaths.Register:
        // var post = settings.arguments as Post;
        // return MaterialPageRoute(builder: (_) => PostView(post: post));
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
