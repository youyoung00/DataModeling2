import 'package:flutter/foundation.dart';
import 'package:mymusic1/SubDataModel.dart';

class MainDataModel {
  String category;
  String categoryimg;
  List<SubDataModel> datas;

  MainDataModel({
    @required this.category,
    @required this.categoryimg,
    @required this.datas,
  });

  MainDataModel.init(Map<String,dynamic> e){
    this.category = e["category"].toString();
    this.categoryimg = e["categoryimg"].toString();
    this.datas = new List.from(e["datas"]).map<SubDataModel>((dynamic v){
      return SubDataModel.init(v);
    }).toList();
  }
}
