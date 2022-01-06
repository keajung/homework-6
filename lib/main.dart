import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),

      ),
      body:

      Padding(
        padding: const EdgeInsets.only(
          top: 25,
          left: 25,
          bottom: 25,
          right: 25,
        ),
        child: Container(
      // เทียบได้กับแท็ก <div> ของ HTML
      decoration: BoxDecoration(
      color: Colors.amber.shade200,
          borderRadius: BorderRadius.circular(25),
          //border: Border.all(width: 50.0, color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: Colors.amber.shade900.withOpacity(0.5),
              offset: const Offset(4.0, 5.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),

          ]),

      //alignment: Alignment.center,
      child: Center(

        child: Column(
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 70,
                      left: 30,
                      bottom: 0,
                      right: 0,
                    ),
                    child: Image.asset('assets/images/guess_logo.png', width: 70.0),
                ),

                Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left:5,
                      bottom: 0,
                      right: 30,
                    ),
                    child: Text(
                      'GUESS',
                      style: TextStyle(fontSize: 45.0, color: Colors.amber.shade700),
                    ),

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 80,
                    bottom:0,
                    right: 0,
                  ),
                  child: Text(
                    'THE NUMBER',
                    style: TextStyle(fontSize: 15.0, color: Colors.amber.shade700),

                  ),

                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 20,
                bottom: 0,
                right: 20,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: '',
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 0,
                bottom: 0,
                right: 0,
              ),
              child: ElevatedButton(
                child: Text('GUESS',  style: TextStyle( color: Colors.white)),
                onPressed: () {
                  // โค้ดที่จะทำงานเมื่อกดปุ่ม
                },

              ),
            )


          ],
        ),
      ),

    ),

      )




    );
  }
}