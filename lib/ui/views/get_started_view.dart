import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        padding: EdgeInsets.all(50.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage(
                    'assets/images/girl.png',
                  ),
                  width: 150.0,
                  height: 150.0,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Hey! \nI\'m EVA, your FemmeChat guide.\nWhat would you like to do?',
              style: TextStyle(
                height: 1.4,
                fontFamily: 'Montserrat',
                color: Colors.black.withOpacity(0.5),
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      return null;
                    },
                    child: Container(
                      width: 190,
                      height: 60,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: appPrimaryColor,
                      ),
                      child: Center(
                        child: Text(
                          'Skip Registration',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutePaths.Register);
                    },
                    child: Container(
                      width: 190,
                      height: 60,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: appPrimaryColor,
                      ),
                      child: Center(
                        child: Text(
                          "Register",
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
                  GestureDetector(
                    onTap: () {
                      //  var loginSuccess = await model.login(_controller.text);
                      // if (loginSuccess) {
                      Navigator.pushNamed(context, RoutePaths.Login);
                      // }
                    },
                    child: Container(
                      width: 190,
                      height: 60,
                      padding: EdgeInsets.all(15.0),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
