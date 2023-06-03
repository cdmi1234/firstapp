import 'package:flutter/material.dart';

class revision extends StatefulWidget {
  const revision({Key? key}) : super(key: key);

  @override
  State<revision> createState() => _revisionState();
}

class _revisionState extends State<revision> {
   double h=200;
   double w=200;
   bool t=false;
   double op=0.4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
         body: Column(
           children: [

               Container(
                height: h,
                width: w,
                color: Colors.yellow,
              ),


             ElevatedButton(onPressed: () {
                  if(t)
                    {
                        h=100;
                        w=100;
                        op=0.4;

                    }
                  else
                    {
                        h=200;
                        w=200;
                        op=0.9;
                    }
                  t=!t;
                  setState(() {

                  });
             }, child: Text("Submit"))
           ],
         )
      
      
    );
  }
}
