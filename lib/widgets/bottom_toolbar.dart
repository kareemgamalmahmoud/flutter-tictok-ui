import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.home , color: Colors.white , size: 30,),
        Icon(Icons.search , color: Colors.white , size: 30,),
        customCreateIcon,
        Icon(Icons.message , color: Colors.white , size: 30,),
        Icon(CupertinoIcons.profile_circled , color: Colors.white , size: 30,),

      ],
    );
  }

  Widget get customCreateIcon =>Container(
    width: 45,
    height: 25,
    child: Stack(children: <Widget>[

      Container(
        margin: EdgeInsets.only(left: 20),
        width: 40,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(7)
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 20),
        width: 40,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(7)
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 7),

        width: 30,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7)
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10),
        width: 20,
        child: Icon(Icons.add),
      ),
    ],),
  );
}
