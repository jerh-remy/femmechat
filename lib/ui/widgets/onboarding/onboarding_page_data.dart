import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

List<Widget> onboardingPageData = [
  Stack(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(
          top: 40.0,
          left: 50.0,
          bottom: 50.0,
          right: 25.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage(
                    'assets/images/heel_girl.png',
                  ),
                  width: 120.0,
                  height: 220.0,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Hey... \nWelcome to FemmeChat!',
              style: TextStyle(
                height: 1.4,
                fontFamily: 'Montserrat',
                color: Colors.black.withOpacity(0.5),
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'FemmeChat is a safe environment for creating health awareness and sharing experiences.',
              softWrap: true,
              style: TextStyle(
                height: 1.4,
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'Montserrat',
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    ],
  ),
  Stack(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(
          top: 40.0,
          left: 50.0,
          bottom: 50.0,
          right: 25.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage(
                    'assets/images/Untroubled.png',
                  ),
                  height: 236,
                  width: 220,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Share your experiences.',
              style: TextStyle(
                height: 1.4,
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Femmechat allows you to express yourself with like-minded individuals with no judgement!',
              style: TextStyle(
                height: 1.4,
                fontSize: 15.0,
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    ],
  ),
  Stack(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(
          top: 40.0,
          left: 50.0,
          bottom: 50.0,
          right: 25.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage(
                    'assets/images/doctor.png',
                  ),
                  height: 200,
                  width: 110,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'Get professional help',
              style: TextStyle(
                height: 1.4,
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Get unlimited access to foundations and organizations that offer help and access to resources that create health awareness.',
              style: TextStyle(
                height: 1.4,
                fontSize: 15.0,
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    ],
  ),
];
