import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bigger Number Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int var1 = Random().nextInt(100);
  int var2 = Random().nextInt(100);

  void randomGenerate(int arg1, int arg2){
    if (arg1 > arg2){
    _counter++;
    }
    else if (arg1 == arg2){

    }
    else{
      _counter--;
    }
    Random random = new Random();
    var1 = random.nextInt(100);
    var2 = random.nextInt(100);
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: [
            Text("Press the button of the largger Number, if you get it right, you will get a point, if not lose a point", ),
            Row(
              children: [
                ElevatedButton(
                  child: Text('$var1', style: TextStyle(fontSize: 20)),
                  onPressed: (){
                    randomGenerate(var1 , var2);
                  },//function
                ),
                ElevatedButton(
                  child: Text('$var2', style: TextStyle(fontSize: 20)),
                  onPressed: (){
                    randomGenerate(var2 , var1);
                  },
                ),
              ],),
            Text('$_counter',style: Theme.of(context).textTheme.headline4, ),
          ],
        ),
      ),
    );
  }
}