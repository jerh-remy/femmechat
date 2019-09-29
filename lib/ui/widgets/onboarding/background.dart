import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top,
      color: Colors.white,
      child: Align(
        alignment: Alignment(-1.0, 0.65),
        child: Image(
          image: AssetImage(
            'assets/images/Rectangle.png',
          ),
          width: 200.0,
          height: 350.0,
        ),
      ),
    );
  }
}
