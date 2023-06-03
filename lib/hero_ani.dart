import 'package:animation/ani_class.dart';
import 'package:flutter/material.dart';

class hero_ani extends StatefulWidget {
  const hero_ani({Key? key}) : super(key: key);

  @override
  State<hero_ani> createState() => _hero_aniState();
}

class _hero_aniState extends State<hero_ani> {
  List l=["creative1.jpg","download.jpg","download (1).jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: l.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder:
            (context, index) {
          return  InkWell(
            onTap: () {
                Navigator.push(context, myanimation(second(l[index])));
            },
            child: Hero(tag: "${l[index]}", child: Container(
              height: 100,
              width: 100,
              child: Image.asset("images/${l[index]}"),
            )),
          );
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
      body: Hero(tag: "${widget.l
      }", child: Image.asset("images/${widget.l}"),
      )
    );
  }
}

