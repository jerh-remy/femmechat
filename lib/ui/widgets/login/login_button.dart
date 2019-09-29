import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
    @required this.mediaQuery,
  }) : super(key: key);

  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
