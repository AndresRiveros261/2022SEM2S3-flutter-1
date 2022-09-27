import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/article.model.dart';

class DetallePage extends StatelessWidget {
  DetallePage({super.key, required this.article});
  ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   backgroundColor: Color(0XFF136154),
        appBar: AppBar(title: Text(article.title)),
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.white30)),
          child: Column(
            children: [
              Text(article.title,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 26, fontFamily: 'BeaufortforLOL-Bold')),
              Image.network(article.urlToImage),
              Text("\n"),
              Text(article.content,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18, fontFamily: 'BeaufortforLOL-Bold')),
              Divider(),
              Text("\n"),
              Text(article.author,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14,
                      height: 0.9,
                      fontFamily: 'BeaufortforLOL-Bold',
                      fontStyle: FontStyle.italic)),
              Text("\n"),
              Text(article.publishedAt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'BeaufortforLOL-Bold')),
            ],
          ),
        ));
  }
}
