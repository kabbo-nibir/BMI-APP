import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('App Title'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RefactorCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 80.0,),
                        Text('Male',
                          style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),)
                      ],
                    ),
                    color: Color(0xFF1D1E33),
                  ),
                ),
                //SizedBox(width: 5.0),
                Expanded(
                  child: RefactorCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.venus, size: 80.0,),
                        Text('Female',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),)
                      ],
                    ),
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: RefactorCard(
              color: Color(0xFF1D1E33),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RefactorCard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: RefactorCard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            width: double.infinity,
            height: 90,
          )
        ],
      ),
    );
  }
}

class RefactorCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  RefactorCard({@required this.color, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        /*border: Border.all(
          color: Colors.white,
        ),*/
      ),
    );
  }
}
