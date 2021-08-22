import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()
));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 8,
                child: Container(
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Text(
                          'Insulin Inspector',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 9
                                ..color = Colors.black,
                          ),
                        ),
                        Text(
                          'Insulin Inspector',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Container(
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Text(
                          'Blood Sugar level: 6.1 mmol/L',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        Text(
                          'Blood Sugar level: 6.1 mmol/L',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(

              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment(1.0, 1.0) ,
                  color: Colors.white,
                  child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            border: UnderlineInputBorder(),
                            hintText: '   # of carbs in your next meal'
                        ),
                    keyboardType: TextInputType.number,
                    ),

                  ),

              ),

            Expanded(
              flex: 2,
              child: Container(

              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Container(
                  alignment: Alignment(1.0, 1.0) ,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        border: UnderlineInputBorder(),
                        hintText: '   Maunally update blood sugar'
                    ),
                    keyboardType: TextInputType.number,
                  ),

                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Text(
                        'Press the arrow on the right to proceed',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        'Press the arrow on the right to proceed',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(

              ),
            ),
          ],
        ),
      ),




      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.blue[600],
        onPressed: () {},
      ),
    );

  }
}