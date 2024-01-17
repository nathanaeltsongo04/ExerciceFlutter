import 'package:calculator/Calculatrice.dart';
import 'package:calculator/Cotation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculatrice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //useMaterial3: true,
        backgroundColor: Colors.green,
      ),
      home: MyHomePage(title: 'TRAVAIL PRATIQUE SUR LE GRAPHISME AVEC FLUTTER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({key ? key, required this.title});
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Calc()));
              },
              child: Text("Calculator"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => cote()));
              },
              child: Text("Point"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
