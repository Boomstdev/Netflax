import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Headline',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
                ),
              ),
              Text(
                'Demo Headline 2',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
             SizedBox(
               height: 200.0,
               width: 200.0,
               child: GridView.count(
                 primary: false,
                 padding: const EdgeInsets.all(20),
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10,
                 crossAxisCount: 2,
                 children: <Widget>[
                   Container(
                     padding: const EdgeInsets.all(8),
                     child: const Text("He'd have you all unravel at the"),
                     color: Colors.teal[100],
                   ),
                   Container(
                     padding: const EdgeInsets.all(8),
                     child: const Text('Heed not the rabble'),
                     color: Colors.teal[200],
                   ),
                   Container(
                     padding: const EdgeInsets.all(8),
                     child: const Text('Sound of screams but the'),
                     color: Colors.teal[300],
                   ),
                   Container(
                     padding: const EdgeInsets.all(8),
                     child: const Text('Who scream'),
                     color: Colors.teal[400],
                   ),
                   Container(
                     padding: const EdgeInsets.all(8),
                     child: const Text('Revolution is coming...'),
                     color: Colors.teal[500],
                   ),
                   Container(
                     padding: const EdgeInsets.all(8),
                     child: const Text('Revolution, they...'),
                     color: Colors.teal[600],
                   ),
                 ],
               )
             ),



              // Expanded(
              //   child: GridView.builder(
              //     itemCount: 20,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 3),
              //     itemBuilder: (BuildContext context, int index) {
              //       return GestureDetector(
              //         child: new Card(
              //           elevation: 5.0,
              //           child: new Container(
              //             alignment: Alignment.center,
              //             child: new Text('Item $index'),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
//https://gdb.voanews.com/BE8893DB-40FA-4DE0-BDBE-F62003D554C5_w408_r0_s.jpg
