import 'package:flutter/material.dart';
import 'package:mymusic1/SubDataModel.dart';

class PageThree extends StatelessWidget {

  // Map<String,dynamic> sData;
  SubDataModel sData;
  String category;
  PageThree({@required this.category, @required this.sData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(this.category),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  child: Text(this.sData.title),
                ),
                Container(
                  child: Text(this.sData.singer),
                ),
                Container( width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(this.sData.jacket)
                      )
                  ),
                ),
                Container(
                  child: Text(this.sData.lyrics),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
