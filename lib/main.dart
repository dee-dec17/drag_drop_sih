import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home : DragDrop(),
      debugShowCheckedModeBanner: false,
    ),
  );
}


class DragDrop extends StatefulWidget {
  @override
  DragDropState createState() {
    return DragDropState();
  }
}

class DragDropState extends State<DragDrop>{
 bool isSuccessful1 = false;
 bool isSuccessful2 = false;
 bool isSuccessful3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag and Drop"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 Draggable(
                data: 'Hawksbill',
                child: Container(
                  child: (isSuccessful1 == true ? Emoji(emoji: '✅') : Image.asset("images/hawksbill.jpeg")),
                  height: 150.0,
                  width: 150.0,
                  ),
                feedback: Container(
                  child: Image.asset("images/hawksbill.jpeg"),
                  height: 150.0,
                  width: 150.0,
                  ),
                childWhenDragging: Container(),
              ),
              Draggable(
                data: 'Narcondam Hornabill',
                child: Container(
                  child: (isSuccessful2 == true ? Emoji(emoji: '✅') : Image.asset("images/narcondam_hornbill.jpeg")),
                  height: 150.0,
                  width: 150.0,
                  ),
                feedback: Container(
                  child: Image.asset("images/narcondam_hornbill.jpeg"),
                  height: 150.0,
                  width: 150.0,
                  ),
                childWhenDragging: Container(),
              ),
              Draggable(
                data: 'Nicobar Megapode',
                child: Container(
                  child: (isSuccessful3 == true ? Emoji(emoji: '✅') :Image.asset("images/nicobar_megapode.jpeg")),
                  height: 150.0,
                  width: 150.0,
                  ),
                feedback: Container(
                  child: Image.asset("images/nicobar_megapode.jpeg"),
                  height: 150.0,
                  width: 150.0,
                  ),
                childWhenDragging: Container(),
              )
               ],
             ),


             Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 DragTarget(
                builder: (context, List<String> candidateData, rejectedData) {
                                  return Center(
                                    child: isSuccessful3
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Container(
                              color: Colors.green[800],
                              height: 150.0,
                              width: 150.0,
                              child: Column(
                                children: <Widget>[
                                  Text("Nicobar Megapode", style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),
                                  Center(
                                    child:  Container(
                  child: Image.asset("images/nicobar_megapode.jpeg"),
                  height: 100.0,
                  width: 100.0,
                  ),),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            child: Text("Nicobar Megapode", style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),
                            height: 150.0,
                            width: 150.0,
                            color: Colors.deepPurple[900],
                          ),
                  );
                },
                onWillAccept: (data) {
                  if (data == "Nicobar Megapode"){
                    return true;
                  }
                  else{
                    return false;
                  }
                },
                onAccept: (data) {
                  setState(() {
                    isSuccessful3 = true;
                  }
                  );
                },
                onLeave: (data) {},
              ),
                 DragTarget(
                builder: (context, List<String> candidateData, rejectedData) {
                                  return Center(
                                    child: isSuccessful1
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Container(
                              color: Colors.green[800],
                              height: 150.0,
                              width: 150.0,
                              child: Column(
                                children: <Widget>[
                                  Text("Hawksbill", style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),
                                  Center(
                                    child:  Container(
                  child: Image.asset("images/hawksbill.jpeg"),
                  height: 100.0,
                  width: 100.0,
                  ),),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            child: Text("Hawksbill", style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),
                            height: 150.0,
                            width: 150.0,
                            color: Colors.deepPurple[900],
                          ),
                  );
                },
                onWillAccept: (data) {
                  if (data == "Hawksbill"){
                    return true;
                  }
                  else{
                    return false;
                  }
                },
                onAccept: (data) {
                  setState(() {
                    isSuccessful1 = true;
                  }
                  );
                },
                onLeave: (data) {},
              ),
              DragTarget(
                builder: (context, List<String> candidateData, rejectedData) {
                                  return Center(
                                    child: isSuccessful2
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Container(
                              color: Colors.green[800],
                              height: 150.0,
                              width: 150.0,
                              child: Column(
                                children: <Widget>[
                                  Text("Narcondam Hornbill", style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),
                                  Center(
                                    child:  Container(
                  child: Image.asset("images/narcondam_hornbill.jpeg"),
                  height: 100.0,
                  width: 100.0,
                  ),),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            child: Text("Narcondam Hornabill", style: TextStyle(fontSize: 20.0, color: Colors.white), textAlign: TextAlign.center,),
                            height: 150.0,
                            width: 150.0,
                            color: Colors.deepPurple[900],
                          ),
                  );
                },
                onWillAccept: (data) {
                  if (data == 'Narcondam Hornabill'){
                    return true;
                  }
                  else{
                    return false;
                  }
                },
                onAccept: (data) {
                  setState(() {
                    isSuccessful2 = true;
                  }
                  );
                },
                onLeave: (data) {},
              ),
              
               ],
             ),
           ],
         ),
      ),
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}






/*
import 'package:flutter/material.dart';

void main() => {MyApp()};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Drag and drop',
          home: drag_drop(),
        );
  }
}

// ignore: camel_case_types
class drag_drop extends StatefulWidget {
  @override
  _drag_dropState createState() => _drag_dropState();
}

// ignore: camel_case_types
class _drag_dropState extends State<drag_drop> {
  bool isSuccessful;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Smart Depot"),
        backgroundColor: Colors.purple,
      ),
          body: Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Draggable(
                data: 'Flutter',
                child: FlutterLogo(
                  size: 100.0,
                ),
                feedback: FlutterLogo(
                  size: 100.0,
                ),
                childWhenDragging: Container(),
              )
               ],
             ),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 DragTarget(
                builder: (context, List<String> candidateData, rejectedData) {
                                  return Center(
                                    child: isSuccessful
                        ? Padding(
                            padding: EdgeInsets.only(top: 100.0),
                            child: Container(
                              color: Colors.yellow,
                              height: 200.0,
                              width: 200.0,
                              child: Center(
                                  child: FlutterLogo(
                                size: 100.0,
                              )),
                            ),
                          )
                        : Container(
                            height: 200.0,
                            width: 200.0,
                            color: Colors.yellow,
                          ),
                  );
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  setState(() {
                    isSuccessful = true;
                  });
                },
              ),
               ],
             ),
           ],
         ),
      ),
    );
  }
}

*/
