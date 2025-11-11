
import 'dart:math';

import 'package:flutter/material.dart';

class Selectcard extends StatefulWidget{(

  const SelectCard ({super.key});

 @override
  State<Selectcard> CreateState ()=> _SelectcardState;

)


class _SelectcardState extends State<Selectcard>{
  var select =[ '♣', '🖤' , '🃏' ,'♣', '♦'];
  String user_select;
  String result;
  String card1 = '❔';
  String card2 = '❔';
 String card3 = '❔';
  int temp= Random.nextInt(6);
  void Selectcard (user_select){
    setState((){
   if (user_select == '🃏')=>result= '🃏 the joker is in there';

  }
  void reset(){
    
      
  }


  @override
  StatefulElement createElement() {
    Widget build(BuildContext context)
      return Scaffold(
        backgroundColor: Colors.white,
        body: center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.min,
            children: [
              TextButton(
                onPressed: ()
                Selectcard(user_select),

              ),
              TextButton(
                TextButton(
                onPressed: ()
                reset(),
              )


           Row(
              children: [
                Text(
                  "card: $select[temp]"
                  
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(width: 30),
                Text(
                  "card: $select [temp]"
                
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(width: 30),
                Text(
                  "card: $select [temp]"
                
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(width: 30),
              ],
            ),




            ],


          

          )
        )


      )


  }

}
}
}