import 'package:flutter/material.dart';
import 'task2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AbreraHabib(),
  ));
}

class AbreraHabib extends StatefulWidget {
  const AbreraHabib({Key? key}) : super(key: key);

  @override
  State<AbreraHabib> createState() => _AbreraHabibState();
}

class _AbreraHabibState extends State<AbreraHabib> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 252, 113, 6),
                      Color.fromARGB(255, 241, 171, 41),
                      Color.fromARGB(255, 252, 113, 6),
                    ],
                  ),
                ),
                padding: EdgeInsets.fromLTRB(25, 60, 20, 25),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "GET PET",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          fontFamily: 'Aldrich',
                          letterSpacing: 3,
                        ),
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage('images/dog.png'),
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Text(
                        "Find your favorite pet close to you",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'Aldrich',
                          letterSpacing: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Join and discover your favorite pet in your locality",
                        style: TextStyle(
                          color: Color.fromARGB(255, 243, 198, 101),
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Task2()));
                            print('pressed');
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.fromLTRB(100, 20, 100, 20)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: BorderSide(color: Colors.white))),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
