import 'package:flutter/foundation.dart';

class SubDataModel{
  String title;
  String singer;
  String jacket;
  String lyrics;
  //List sData;

  SubDataModel({
    @required this.title,
    @required this.lyrics,
    @required this.jacket,
    @required this.singer,
    //@required this.sData
  });

  SubDataModel.init(Map<String,dynamic> v){
    this.title = v["title"].toString();
    this.singer = v["singer"].toString();
    this.jacket = v["jacket"].toString();
    this.lyrics = ["lyrics"].toString();
  }

}
