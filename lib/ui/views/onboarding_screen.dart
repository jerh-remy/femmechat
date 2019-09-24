import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/onboarding_page_data.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart';
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
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Align(
                  alignment: Alignment(-1.0, 0.65),
                  child: Image(
                    image: AssetImage(
                      'assets/images/Rectangle.png',
                    ),
                    width: 200.0,
                    height: 350.0,
                  ),
                ),
              ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      _currentPage != 2
                          ? FlatButton(
                              onPressed: () {
                                print('Skip');
                                _pageController.animateToPage(
                                  _numPages - 1,
                                  curve: Curves.ease,
                                  duration: Duration(
                                    milliseconds: 200,
                                  ),
                                );
                              },
                              child: Text(
                                'SKIP',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.75),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat'),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                  _currentPage != _numPages - 1
                      ? Expanded(
                          child: Align(
                              alignment: Alignment(
                                0.8,
                                0.3,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 350),
                                    curve: Curves.ease,
                                  );
                                },
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: appPrimaryColor,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        )
                      : Expanded(
                          child: Align(
                            alignment: Alignment(
                              0.8,
                              0.35,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RoutePaths.GetStarted);
                              },
                              child: Container(
                                width: 150,
                                height: 60,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: appPrimaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                ],
              ),
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
