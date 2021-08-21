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
                flex: 3,
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
              flex: 3,
              child: Container(

              ),
            ),
            Expanded(
              flex: 3,
              child: Container(

              ),
            ),

          ],
        ),
      ),




      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.blue[600],
        onPressed: () {},
      ),
    );

  }
}