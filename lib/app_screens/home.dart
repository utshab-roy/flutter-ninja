import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 40.0,
        ),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "JAL",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "From Japan to Bangladesh",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Qatar",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "From Bangladesh to Doha",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Image(
              image: AssetImage(
                'assets/sample-2.jpg',
              ),
              width: 100.0,
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
