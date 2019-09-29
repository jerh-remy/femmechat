import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterBtn extends StatelessWidget {
  const RegisterBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
