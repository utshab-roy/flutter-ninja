import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 50.0,
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
            SizedBox(height: 20.0),
            FlightBookingButton(),
          ],
        ),
      ),
    );
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        color: Colors.red[600],
        child: new Text(
          'Book Your Flight',
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () => bookFlight(context),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialouge = AlertDialog(
      title: Text('Flight Booked Successfully'),
      content: Text('Have a safe flight !'),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialouge);
  }
}
