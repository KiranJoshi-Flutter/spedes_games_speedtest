import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool toggleYellow = false;
  bool toggleGreen = false;
  bool toggleBlue = false;
  bool toggleRed = false;

  int toggle = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer myTimer = Timer.periodic(Duration(seconds: 2), (timer) {
      toggle = 0;
      setState(() {
        if (toggle == 0) {
          toggleYellow = !toggleYellow;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (toggleYellow == true) {
                      setState(() {
                        toggleYellow = false;
                      });
                    } else {
                      print('You Lose !!');
                    }
                  },
                  child: toggleYellow
                      ? Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        )
                      : Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.yellow[700],
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                toggleGreen
                    ? Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      )
                    : Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.green[700],
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                toggleBlue
                    ? Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      )
                    : Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                SizedBox(
                  width: 20.0,
                ),
                toggleRed
                    ? Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      )
                    : Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
