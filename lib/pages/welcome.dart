// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';


import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome",style: TextStyle(fontSize: 27),),
        centerTitle: true,
        backgroundColor:Colors.purple[300] ,
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center ,
          
          children: [
             ElevatedButton(
   onPressed: (){// Navigate to the second screen using a named route.
  Navigator.pushNamed(context, '/second');},
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(Colors.purple),
     padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 17,horizontal: 80)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(66))),
  ),
   child: Text("Log in", style: TextStyle (fontSize: 27)),
),
          
          
          SizedBox(
            height: 22,
          ),
          ElevatedButton(
   onPressed: (){// Navigate to the second screen using a named route.
  Navigator.pushNamed(context, '/trois');},
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
     padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 17,horizontal: 80)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(66))),
  ),
   child: Text("Sing in", style: TextStyle (fontSize: 27, color: Colors.black)),
),
          
          
          ],
        ),
      )
         
    );
  }
}