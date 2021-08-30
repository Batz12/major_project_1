import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.amberAccent,
      appBar: AppBar(
        title: Text('Num_count'),
        backgroundColor: Colors.blueGrey,
      ),
      body: NumPage(),
    ),
    );
  }
}

class NumPage extends StatefulWidget {
  @override
  _NumState createState() => _NumState();
}

class _NumState extends State<NumPage> {
  var start=0;
  var top=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child:FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/$top.png',
                  color: Colors.black,
                ),
              ),
             onPressed: (){

             },
            ),
            ),


          Expanded(
              child: FlatButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/$start.png',
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if(start==9)
                      {
                        top++;
                        if(top==10)
                          {top=0;}
                        start=0;
                      }
                    else
                      {
                        start++;
                      }
                  });

                  print('button is pressed.');
                },
                onLongPress: () {
                  setState(() {
                    if(start==9)
                    {
                      top++;
                      if(top==10)
                      {top=0;}
                      start=0;
                    }
                    else
                    {
                      start++;
                    }
                  });

                  print('button is long pressed.');
                },
              ),
            ),
    ],
      ),
    );
  }
}
