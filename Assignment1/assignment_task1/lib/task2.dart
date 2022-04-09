import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(Task2());
}

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Adopt Pet',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.orange,
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      alignment: Alignment.topLeft,
                      child: Image(
                        image: AssetImage('images/fourblock.JPG'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
                      alignment: Alignment.topRight,
                      child: Image(
                        image: AssetImage('images/Boy.PNG'),
                        height: 40,
                        width: 40,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Text(
                    "Hi, Kamran",
                    style: TextStyle(
                      fontSize: 38,
                      fontFamily: 'Expansiva',
                      fontWeight: FontWeight.w900,
                    ),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Good Morning!",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Expansiva',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage('images/one.PNG'),
                              ),
                            ),
                            Expanded(
                              child: Image(
                                image: AssetImage('images/two.PNG'),
                              ),
                            ),
                            Expanded(
                              child: Image(
                                image: AssetImage('images/three.PNG'),
                              ),
                            ),
                            Expanded(
                              child: Image(
                                image: AssetImage('images/four.PNG'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Text(
                    "Adopt Pet",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Expansiva',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(child: Image.asset('images/Jack.png')),
                  Container(child: Image.asset('images/Tomy.png'))
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(child: Image.asset('images/Tiger.png')),
                  Container(child: Image.asset('images/Baroos.png'))
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
