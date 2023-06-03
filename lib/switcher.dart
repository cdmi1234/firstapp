import 'package:flutter/material.dart';

class switcher1 extends StatefulWidget {
  const switcher1({Key? key}) : super(key: key);

  @override
  State<switcher1> createState() => _switcher1State();
}

class _switcher1State extends State<switcher1> {
  bool t = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: Column(
      children: [
        AnimatedSwitcher(
          switchInCurve: Curves.bounceInOut,
          child: (t)?mywid1():mywid2(),
            duration: Duration(seconds: 5)),
        ElevatedButton(onPressed: () {
         t=!t;
         setState(() {

         });
        }, child: Text("submit"))

      ],
    ),
    );
  }

 
Widget mywid1()
{
         return  Container(
           key: Key("one"),
           height: 100,
           width: 100,
           color: Colors.yellow,
         );
}

  Widget mywid2()
  {
    return  Container(
      key: Key("two"),
      height: 100,
      width: 100,
      color: Colors.pink,
    );
  }


}
