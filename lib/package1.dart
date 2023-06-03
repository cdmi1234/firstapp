import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class package1 extends StatefulWidget {
  const package1({Key? key}) : super(key: key);

  @override
  State<package1> createState() => _package1State();
}

class _package1State extends State<package1> {

  bool t = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Column(
        children: [
          Expanded(child: PageTransitionSwitcher(
            duration: Duration(seconds: 4),
            child: (t)?second():third(),
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
              return SharedAxisTransition(animation: primaryAnimation,
                  child: child,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.scaled);
            },)),
          Row(
            children: [
              ElevatedButton(onPressed: () {
                 t=!t;
                 setState(() {

                 });
              }, child: Text("Submit")),
              ElevatedButton(onPressed: () {
                    t=!t;
                    setState(() {

                    });
              }, child: Text("Submit"))
            ],
          )
        ],
      ),
    );
  }
}
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Image.asset("images/creative1.jpg"),
    );
  }
}
class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Image.asset("images/download.jpg"),
    );
  }
}




