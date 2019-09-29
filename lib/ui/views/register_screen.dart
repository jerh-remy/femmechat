import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:femmechat_app/ui/shared/remove_scroll_highlight.dart';
import 'package:femmechat_app/ui/widgets/login/appbar.dart';
import 'package:femmechat_app/ui/widgets/onboarding/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final int _numPages = 5;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final _preferredUsernameController = TextEditingController();
  final _emailAddController = TextEditingController();
  final _everAbusedController = TextEditingController();
  final _diagnosedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> registrationPageData = [
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppbar(
              title: 'Register',
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.0,
                bottom: 20.0,
                right: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Great! \nI’m going to ask you a few questions.',
                      style: TextStyle(
                        height: 1.4,
                        fontFamily: 'Montserrat',
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 50.0,
                    bottom: 20.0,
                    right: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'What would you like to be called?',
                          style: TextStyle(
                            height: 1.4,
                            fontFamily: 'Montserrat',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 36.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  decoration: BoxDecoration(
                    color: appPrimaryColorLight,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextField(
                    autofocus: true, //state is! LoginLoading ?
                    keyboardType: TextInputType.text,
                    controller: _preferredUsernameController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.5,
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppbar(
              title: 'Register',
            ),
            SizedBox(
              height: 65.0,
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 50.0,
                    bottom: 20.0,
                    right: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'What is your email address?',
                          style: TextStyle(
                            height: 1.4,
                            fontFamily: 'Montserrat',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 36.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  decoration: BoxDecoration(
                    color: appPrimaryColorLight,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextField(
                    autofocus: true, //state is! LoginLoading ?
                    keyboardType: TextInputType.text,
                    controller: _preferredUsernameController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.5,
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppbar(
              title: 'Register',
            ),
            SizedBox(
              height: 65.0,
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 50.0,
                    bottom: 20.0,
                    right: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Have you ever been abused?',
                          style: TextStyle(
                            height: 1.4,
                            fontFamily: 'Montserrat',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 36.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  decoration: BoxDecoration(
                    color: appPrimaryColorLight,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextField(
                    autofocus: true, //state is! LoginLoading ?
                    keyboardType: TextInputType.text,
                    controller: _preferredUsernameController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.5,
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppbar(
              title: 'Register',
            ),
            SizedBox(
              height: 14.0,
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 50.0,
                    bottom: 20.0,
                    right: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Have you ever been diagnosed with any disease?',
                          style: TextStyle(
                            height: 1.4,
                            fontFamily: 'Montserrat',
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 36.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  decoration: BoxDecoration(
                    color: appPrimaryColorLight,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextField(
                    autofocus: true, //state is! LoginLoading ?
                    keyboardType: TextInputType.text,
                    controller: _preferredUsernameController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.5,
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        color: appPrimaryColorLight,
      )
    ];

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
                    ...registrationPageData,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
