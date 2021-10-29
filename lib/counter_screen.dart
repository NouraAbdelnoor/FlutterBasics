import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
int counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text(
          'counter'
        ),
      ),
body: Center(
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.center,

    children: [

      TextButton(onPressed: (){}, child: Text(

        'MINUS'

      ),



      ),

      Padding(

        padding: const EdgeInsets.symmetric(horizontal: 20.0),

        child: Text(

          '$counter',

          style: TextStyle(

            fontSize: 50.0,

            fontWeight: FontWeight.w900,

          ),

        ),

      ),

      TextButton(onPressed: (){}, child: Text(

          'PLUS'

      ),



      ),

    ],

  ),
),
    );

  }
}
