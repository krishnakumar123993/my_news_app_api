import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_api/model/article_model.dart';

Widget costomListTile(Article article){

  return Container(
    margin:  EdgeInsets.all(12.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 3.0,
        ),
      ]),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

     ///   images
        Container(
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(article.urlToImage),

            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),

        SizedBox(height: 8.0,

        ),

        ///source name

        Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius:  BorderRadius.circular(20.8),
          ),
          child: Text(
            article.source.name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        SizedBox(
          height: 8.0,
        ),

        Text(
          article.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        )

      ],
    ),
  );
}