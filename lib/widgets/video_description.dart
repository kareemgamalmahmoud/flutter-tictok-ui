import 'package:flutter/material.dart';

class videoDiscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        margin: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('@anyname' , style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Video title and some other stuff'),
            Row(children: <Widget>[
              Icon(Icons.music_note,size: 15,color: Colors.white,),
              Text('Artist name - Album name - song' , style: TextStyle(fontSize: 12),),
            ],)
          ],
        ),
      ),
    );
  }
}
