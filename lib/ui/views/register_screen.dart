import 'package:carousel_slider/carousel_slider.dart';
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
  int _currentAvatarPage = 0;

  final _preferredUsernameController = TextEditingController();
  final _emailAddController = TextEditingController();
  final _everAbusedController = TextEditingController();
  final _diagnosedController = TextEditingController();

  //password controllers
  final _passwordController = TextEditingController();
  final _passwordController2 = TextEditingController();

  //password node
  final FocusNode passwordNode2 = FocusNode();

  bool passwordVisible;
  bool passwordVisible2;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
    passwordVisible2 = false;
  }

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);

    List<Widget> registrationPageData = [
      ListView(
        children: <Widget>[
          CustomAppbar(
            title: 'Register',
          ),

          // SizedBox(
          //   height: 100.0,
          // ),
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
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 16.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 45.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: appPrimaryColorLight,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      autofocus: false, //state is! LoginLoading ?
                      keyboardType: TextInputType.text,
                      controller: _preferredUsernameController,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        letterSpacing: 0.5,
                        fontSize: 16.0,
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
                  Positioned(
                    right: 35.0,
                    top: 3.0,
                    child: GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 350),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        width: 65,
                        height: 65,
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
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      ListView(
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
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
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 16.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 45.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: appPrimaryColorLight,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      autofocus: false, //state is! LoginLoading ?
                      keyboardType: TextInputType.text,
                      controller: _emailAddController,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        letterSpacing: 0.5,
                        fontSize: 16.0,
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
                  Positioned(
                    right: 35.0,
                    top: 3.0,
                    child: GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 350),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        width: 65,
                        height: 65,
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
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      ListView(
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
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
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 16.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 45.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: appPrimaryColorLight,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      autofocus: false, //state is! LoginLoading ?
                      keyboardType: TextInputType.text,
                      controller: _everAbusedController,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        letterSpacing: 0.5,
                        fontSize: 16.0,
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
                  Positioned(
                    right: 35.0,
                    top: 3.0,
                    child: GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 350),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        width: 65,
                        height: 65,
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
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      ListView(
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
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 16.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 45.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: appPrimaryColorLight,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      autofocus: false, //state is! LoginLoading ?
                      keyboardType: TextInputType.text,
                      controller: _diagnosedController,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        letterSpacing: 0.5,
                        fontSize: 16.0,
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
                  Positioned(
                    right: 35.0,
                    top: 3.0,
                    child: GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 350),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        width: 65,
                        height: 65,
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
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      ListView(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) /
                2,
            child: Column(
              children: <Widget>[
                CustomAppbar(
                  title: 'Register',
                ),
                // Spacer(
                //   flex: 3,
                // ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 50.0,
                    bottom: 10.0,
                    right: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'We’re almost done! \nSelect an avatar and a password.',
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: Center(
                    child: Text(
                      _preferredUsernameController.text,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: CarouselSlider(
                      height: 120,
                      onPageChanged: (index) {
                        print('index is $index');
                        setState(() {
                          _currentAvatarPage = index;
                        });
                      },
                      enlargeCenterPage: true,
                      viewportFraction: 0.35,
                      items: [1, 2, 3, 4, 5].map((index) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 10.0,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: _currentAvatarPage == index - 1
                                          ? appPrimaryColor
                                          : Colors.transparent,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0.0,
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Padding(
                                      padding: _currentAvatarPage == index - 1
                                          ? const EdgeInsets.all(5.0)
                                          : const EdgeInsets.all(0.0),
                                      child: Image.asset(
                                        'assets/images/avatar.png',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                // Spacer(
                //   flex: 1,
                // ),
              ],
            ),
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) /
                2,
            child: Column(
              children: <Widget>[
                Spacer(),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 10.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  decoration: BoxDecoration(
                      color: appPrimaryColorLight,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _passwordController,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(passwordNode2);
                    },
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black26,
                          size: 22.0,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 10.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  decoration: BoxDecoration(
                      color: appPrimaryColorLight,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextField(
                    focusNode: passwordNode2,
                    keyboardType: TextInputType.text,
                    controller: _passwordController2,
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                    obscureText: !passwordVisible2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Retype Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black26,
                          size: 22.0,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible2 = !passwordVisible2;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print("Submit");
                    //  var loginSuccess = await model.login(_controller.text);
                    // if (loginSuccess) {
                    // Navigator.pushNamed(context, RoutePaths.Home);
                    // }
                  },
                  child: Container(
                    width: 160.0,
                    height: 60.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 20.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: appPrimaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
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
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 16.0,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'By registering you agree to our ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'terms and conditions.',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ];

    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _currentPage != _numPages - 1
                  ? ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Background(),
                      ],
                    )
                  : Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                    ),
              // _currentPage != _numPages - 1
              //     ? CustomAppbar(
              //         title: 'Register',
              //       )
              //     : SizedBox(),
              PageView(
                physics: BouncingScrollPhysics(),
                // physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                    print('page $_currentPage');
                  });
                },
                children: <Widget>[
                  ...registrationPageData,
                ],
              ),

              // CustomAppbar(
              //   title: 'Register',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
