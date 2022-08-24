import 'package:flutter/material.dart';
import 'package:untitled6/Alert.dart';
import 'package:untitled6/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
@override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                 setState(() {
                   counter--;
                   print(counter);
                 });
                },
                child: Text('MUNAS'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '$counter',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
                child: Text('PLUS'),
              ),

            ],
          ),
          SizedBox(height: 50,),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context){
                      return AlertScreen();
                    }));
              },
              child: Text('Next Page')
          ),
        ],
      ),
    );
  }
}
