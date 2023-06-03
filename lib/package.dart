import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class package extends StatefulWidget {
  const package({Key? key}) : super(key: key);

  @override
  State<package> createState() => _packageState();
}

class _packageState extends State<package> {
  List l = ["creative1.jpg", "download.jpg", "download (1).jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: GridView.builder(
        itemCount: l.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) {

             return OpenContainer(
               middleColor: Colors.yellow,
               transitionType: ContainerTransitionType.fadeThrough,
               transitionDuration: Duration(seconds: 5),
               closedBuilder: (context, action) {
                 return Container(
                   height: 100,
                   width: 100,
                   child: Image.asset("images/${l[index]}"),
                 );
             }, openBuilder: (context, action) {
      return second(l[index]);
             },);
          },),
    );
  }
}

class second extends StatefulWidget {
  String l;
  second(this.l);


  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.asset("images/${widget.l}"),
    );
  }
}
