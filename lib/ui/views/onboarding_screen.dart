import 'package:femmechat_app/onboarding_page_data.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:femmechat_app/ui/widgets/onboarding/background.dart';
import 'package:femmechat_app/ui/widgets/onboarding/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 16.0 : 8.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: appPrimaryColor,
        ),
        color: isActive ? appPrimaryColor : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Background(),
              Container(
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  // physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    ...onboardingPageData,
                  ],
                ),
              ),
              Buttons(
                  currentPage: _currentPage,
                  pageController: _pageController,
                  numPages: _numPages),
              Align(
                alignment: Alignment(-0.65, 0.35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: _buildPageIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
