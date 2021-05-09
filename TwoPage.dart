import 'package:flutter/material.dart';
import 'package:mymusic1/Models/MainDataModels.dart';
import 'package:mymusic1/PageThree.dart';
import 'package:mymusic1/SubDataModel.dart';


class TwoPage extends StatelessWidget {

  String category;
  String categoryimg;
  List<SubDataModel> datas;

  TwoPage({@required this.categoryimg, @required this.category,@required this.datas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(this.category),
        centerTitle: true
      ),
      body: ListView.builder(
        itemCount: this.datas.length,
        itemBuilder:(BuildContext context, int index){
          return new Container(
            child: ListTile(
              onTap: ()=> Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => new PageThree(
                      sData: this.datas[index],
                      category: this.category,
                    )
                  )
              ),
              leading: Container(
                width: 50,
                height: 60,
                child: Image(fit: BoxFit.cover,
                    image: NetworkImage(this.datas[index].jacket)
                ),
              ),
              title: Text(this.datas[index].title),
              subtitle: Text(this.datas[index].singer),
              trailing: Icon(Icons.play_arrow),
            ),
          );
        },
      ),
    );
  }
}
