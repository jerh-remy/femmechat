import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key key,
    @required int currentPage,
    @required PageController pageController,
    @required int numPages,
  })  : _currentPage = currentPage,
        _pageController = pageController,
        _numPages = numPages,
        super(key: key);

  final int _currentPage;
  final PageController _pageController;
  final int _numPages;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  ),
                ),
              )
            : Expanded(
                child: Align(
                  alignment: Alignment(
                    0.8,
                    0.35,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutePaths.GetStarted);
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
    );
  }
}
