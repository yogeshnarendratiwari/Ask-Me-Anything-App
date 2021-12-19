import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: const Ask_Me_Anything(),
    ),
  ));
}

// ignore: camel_case_types
class Ask_Me_Anything extends StatefulWidget {
  const Ask_Me_Anything({Key? key}) : super(key: key);

  @override
  _Ask_Me_AnythingState createState() => _Ask_Me_AnythingState();
}

// ignore: camel_case_types
class _Ask_Me_AnythingState extends State<Ask_Me_Anything>
{
  int answer = 0;
  bool speak = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(

             children: [
               SizedBox(width: 120.0,
                   height:300.0,
                   child: Expanded(child:Image.asset('images/robot.png'),)),
             const  SizedBox(
                 width: 60.0,
               ),
               Column(
                 children: [
                    const Center(
                      child: Text("What's your question?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),),
                    ),
                    const Center(
                     child: Text("[answer will come only in yes/no form \n so type your question accordingly]",
                       style: TextStyle(
                         fontStyle: FontStyle.italic,
                         fontSize: 8.0,
                       ),),
                   ),

                   SizedBox(
                       width: 80.0,
                       height: 80.0,
                       child: Expanded(child: TextButton(
                           onPressed: (){
                             setState(() {
                               speak=true;
                               answer=0;
                             });
                           },
                           child: Image.asset('images/sound.png')),)),
                Center(
                     child: ElevatedButton(onPressed: (){

                       if(speak)
                         {
                           setState(() {
                             answer = Random().nextInt(3)+1;
                             speak = false;
                           });
                         }
                       else {
                         setState(() {
                           answer =5 ;
                         });
                       }

                     }, child: const Text('Submit')),
                   )
                 ],
               ),
             ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox
              ( width: 300.0,
                height: 300.0,
                child: Expanded(child: Image.asset('images/image$answer.png')))
          ],
        )
      ],
    )
    ;
  }
}
