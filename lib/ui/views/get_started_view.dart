import 'package:femmechat_app/core/constants/app_constants.dart';
import 'package:femmechat_app/ui/shared/app_colors.dart';
import 'package:femmechat_app/ui/widgets/get_started/login_btn.dart';
import 'package:femmechat_app/ui/widgets/get_started/register_btn.dart';
import 'package:femmechat_app/ui/widgets/get_started/skip_register_btn.dart';
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
                  SkipRegisterBtn(),
                  RegisterBtn(),
                  LoginBtn(),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
