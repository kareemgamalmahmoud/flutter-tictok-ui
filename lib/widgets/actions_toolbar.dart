import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class actionToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _getFollowAction(),
          _getsocialAction( title:'3.2m',icon:CupertinoIcons.heart_solid),
          _getsocialAction( title:'3.2m',icon:Icons.chat_bubble),
          _getsocialAction( title:'3.2m',icon:Icons.reply , isShare: false),
          _getMusicPlayerAction(),
        ],
      ),
    );
  }

  Widget _getProfilePicture()
  {
    return Positioned(
      right: 5,

      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50)),
        child: CachedNetworkImage(
          imageUrl: "https://cdn.pixabay.com/photo/2016/02/24/19/05/apples-1220574__340.png",
          width: 80.0,
          height: 80.0,
          placeholder: (context, url) => new CircularProgressIndicator(),
          errorWidget: (context, url, error) => new Icon(Icons.error),
        ),
      ),
    );
  }
  Widget _getsocialAction({String title, IconData icon , bool isShare = false})
  {
    return Container(
      height: 60,
      width: 60,
      child: Column(children: <Widget>[
        Icon(icon , size: isShare? 25 : 35, color: Colors.white,),
        Padding(
          padding: EdgeInsets.only(top: isShare? 5 : 2 ),
          child: Text(title , style: TextStyle(fontSize: isShare? 10 : 12),),
        )
      ],),
    );
  }

  Widget _getFollowAction()
  {
    return Container(
      width: 60,
      height: 60,
      child: Stack(
        children: <Widget>[
          _getProfilePicture(),
          _getPlusIcon(),
        ],
      ),
    );
  }



  Widget _getPlusIcon()
  {
    return Positioned(
      bottom: 0,
      right: 20,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  Widget _getMusicPlayerAction()
  {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 50,
      height: 50,
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
            child: CachedNetworkImage(
              imageUrl: "",
              width: 80.0,
              height: 80.0,
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.music_note),
            ),
          ),
        ],
      ),
    );
  }

}

