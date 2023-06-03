import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
double h=100;
double w=100;
bool t=false;
double op=0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animation"),
      ),
      body: Column(
        children: [
      AnimatedOpacity(opacity: op,
          child: Container(
            height: h,
            width: w,
            color: Colors.yellow,
          ),
          duration: Duration(seconds: 3)
      ),
          ElevatedButton(onPressed: () {
              if(t)
                {
                    h=200;
                    w=200;
                    op=0.3;
                }
              else
                {
                  h=100;
                  w=100;
                  op=0.9;
                }
              t=!t;
              setState(() {

              });
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}



