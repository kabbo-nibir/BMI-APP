import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectothe/page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Title'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(child: Container(
             padding: EdgeInsets.all(15.0),
             alignment: Alignment.bottomLeft,
             child: Text('Your Result',style: TextStyle(
               fontSize: 50.0,
               fontWeight: FontWeight.bold,
             ),),
           ),),
          Expanded(
              flex: 5,
            child: RefactorCard(color: Color(0xFF1D1E33),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Normal',style: TextStyle(
                  color: Color(0xFF24D876),
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),),
                Text('18.3',style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Your BMI is low you should eat more',style: TextStyle(
                  fontSize: 22.0,
                ),),
              ],
            ),),
          ),
          RecalCulate(onTap: (){
          Navigator.pop(context);
          }, buttonTitle: 'Re-Calculate')
        ],
      ),
    );
  }
}
