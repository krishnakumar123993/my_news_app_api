import 'package:flutter/material.dart';
import 'package:news_app_api/componets/customListTile.dart';
import 'package:news_app_api/model/article_model.dart';
import 'package:news_app_api/service/api_service.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {

  Apiservice client = Apiservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("News App", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),

      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) => costomListTile(articles[index]),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
