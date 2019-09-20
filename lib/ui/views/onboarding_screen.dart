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

  List<Widget> onboardingPageData = [
    Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Center(
          //   child: Image(
          //     image: AssetImage(
          //       'assets/images/onboarding0.png',
          //     ),
          //     height: 300.0,
          //     width: 300.0,
          //   ),
          // ),
          SizedBox(height: 30.0),
          Text(
            'Hey.. \nWelcome to FemmeChat!',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'FemmeChat, is a safe environment for creating health awareness and sharing experiences.',
            softWrap: true,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Center(
          //   child: Image(
          //     image: AssetImage(
          //       'assets/images/onboarding1.png',
          //     ),
          //     height: 300.0,
          //     width: 300.0,
          //   ),
          // ),
          SizedBox(height: 30.0),
          Text(
            'Share your experiences.',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Femmechat allows you to express yourself with like minded individuals with no judgement!',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Center(
          //   child: Image(
          //     image: AssetImage(
          //       'assets/images/onboarding2.png',
          //     ),
          //     height: 300.0,
          //     width: 300.0,
          //   ),
          // ),
          SizedBox(height: 30.0),
          Text(
            'Get professional help',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Get unlimited access to foundations and organizations that offer help and access to resources that create health awareness.',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    ),
  ];

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
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     // stops: [0.1, 0.4, 0.7, 0.9],
              //     stops: [0.1, 0.7],
              //     colors: [
              //       appPrimaryColor,
              //       Colors.white,
              //     ],

              //     // colors: [
              //     //   Color(0xFF3594DD),
              //     //   Color(0xFF4563DB),
              //     //   Color(0xFF5036D5),
              //     //   Color(0xFF5B16D0),
              //     // ],
              //   ),
              // ),
              child: PageView(
                physics: ClampingScrollPhysics(),
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          print('Skip');
                          _pageController.animateToPage(
                            _numPages - 1,
                            curve: Curves.ease,
                            duration: Duration(
                              milliseconds: 150,
                            ),
                          );
                        },
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ],
                  ),
                  _currentPage != _numPages - 1
                      ? Expanded(
                          child: Align(
                              alignment: Alignment(
                                0.8,
                                0.35,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 300),
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
                              )

                              //  FlatButton(
                              //   onPressed: () {
                              //     _pageController.nextPage(
                              //       duration: Duration(milliseconds: 300),
                              //       curve: Curves.ease,
                              //     );
                              //   },
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.center,
                              //     mainAxisSize: MainAxisSize.min,
                              //     children: <Widget>[
                              //       Text(
                              //         'Next',
                              //         style: TextStyle(
                              //           color: Colors.black,
                              //           fontSize: 18.0,
                              //         ),
                              //       ),
                              //       SizedBox(width: 10.0),
                              //       Icon(
                              //         Icons.arrow_forward,
                              //         color: Colors.black,
                              //         size: 30.0,
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              ),
                        )
                      : Expanded(
                          child: Align(
                            alignment: Alignment(
                              0.9,
                              0.35,
                            ),
                            child: FlatButton(
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black,
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                ],
              ),
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
    );
  }
}
