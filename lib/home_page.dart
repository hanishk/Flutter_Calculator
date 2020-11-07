import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0, num2 =0, sum =0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;  
    });
    
  }

  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;  
    });
    
  }

  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;  
    });
    
  }

  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;  
    });
  }

  void doClear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum =0;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),centerTitle: true,),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output : $sum",
              style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.purple)  
            ),
            TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter 1st Number'
              ),
            ),
            TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter 2nd Number'
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //calculator add sub mult div
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: doSub,
                ),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //calculator add sub mult div
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: doMul,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.greenAccent,
                  onPressed: doDiv,
                ),
                  new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
              ],
            )                
              ],
            )
          ],
        ), 
      )
    );
  }
}