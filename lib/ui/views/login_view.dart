import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:femmechat_app/ui/shared/remove_scroll_highlight.dart';
import 'package:femmechat_app/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final FocusNode passwordNode = FocusNode();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool passwordVisible;

  @override
  void initState() {
    passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: (mediaQuery.size.height - mediaQuery.padding.top),
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment(-1.0, 0.75),
                    child: Image(
                      image: AssetImage(
                        'assets/images/Rectangle.png',
                      ),
                      width: 200.0,
                      height: 350.0,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                        right: 20.0,
                        top: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                  icon: Image.asset(
                                    'assets/images/cancel.png',
                                    width: 20.0,
                                    height: 20.0,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      height: 1.4,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'assets/images/girl.png',
                                  ),
                                  width: 80.0,
                                  height: 100.0,
                                  fit: BoxFit.fitHeight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpaceSmall,
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50.0,
                        right: 50.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Welcome back!\nEnter your username and password to continue.',
                              style: TextStyle(
                                height: 1.4,
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    UIHelper.verticalSpaceLarge,
                    Column(
                      children: <Widget>[
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
                              borderRadius: BorderRadius.circular(20.0)),
                          child: TextField(
                            autofocus: true, //state is! LoginLoading ?
                            keyboardType: TextInputType.text,
                            controller: _usernameController,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.5,
                              fontSize: 16.0,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Username",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            onEditingComplete: () {
                              FocusScope.of(context).requestFocus(passwordNode);
                            },
                          ),
                        ),
                        SizedBox(height: 30.0),
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
                            focusNode: passwordNode,
                            keyboardType: TextInputType.text,
                            controller: _passwordController,
                            style: TextStyle(
                              color: Colors.black54,
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
                      ],
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: (mediaQuery.size.height - mediaQuery.padding.top),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        //  var loginSuccess = await model.login(_controller.text);
                        // if (loginSuccess) {
                        // Navigator.pushNamed(context, RoutePaths.Home);
                        // }
                      },
                      child: Container(
                        width: 190,
                        height: 60,
                        padding: EdgeInsets.all(
                          15.0,
                        ),
                        margin: EdgeInsets.only(
                          bottom: 48.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: appPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            "Login",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
