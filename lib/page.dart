import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 180;
  int weight = 60;
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
                  child: GestureDetector(
                    onTap: () {
                      print('Left pressed');
                    },
                    child: RefactorCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          //SizedBox(height: 15.0),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          )
                        ],
                      ),
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ),
                //SizedBox(width: 5.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("Right pressed");
                    },
                    child: RefactorCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: RefactorCard(
              color: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'height',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Colors.pink,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      //activeColor: Colors.white,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RefactorCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.plus,onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },),
                            SizedBox(width: 10.0),
                            RoundIconButton(icon: FontAwesomeIcons.minus),
                          ],
                        ),
                      ],
                    ),
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

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon,@required this.onPressed });
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
