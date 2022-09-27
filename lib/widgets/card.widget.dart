import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/article.model.dart';
import 'package:newnoticias/pages/detalle.page.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.articulo});

  ArticleModel articulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (description) => DetallePage(
                        article: articulo,
                      )));
        },
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(color: Colors.amberAccent, boxShadow: []),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(articulo.urlToImage),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                articulo.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: Text(
                      articulo.author,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 10,
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      articulo.publishedAt,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        /*
        child: Row(children: <Widget>[
          Expanded(
            child: Image.network(articulo.urlToImage),
          ),

          // CircleAvatar(
          //   radius: 80,
          //   backgroundImage: NetworkImage(articulo.urlToImage),
          // ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    articulo.title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    articulo.author,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    articulo.publishedAt,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Divider(),
                ],
                
              ),
              
            ),
            
          ),
        ]),

        /*
        child: Container(
            padding: EdgeInsets.all(10),
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.network(articulo.urlToImage),
                ),
                Divider(),
                Expanded(
                  flex: 2,
                  child: Text(
                    articulo.description,
                  ),
                ),
              ],
            )),
*/
        /*
        child: Column(children: [
          ListTile(
            title: Text(articulo.description),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(articulo.urlToImage),
          ),
        ]),
*/
/*
        child: Container(
            padding: EdgeInsets.all(5),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(articulo.urlToImage),
                ),
                Expanded(
                  flex: 2,
                  child: Text(articulo.description),
                ),
              ],
            )),

            */
            */
      ),
    );
  }
}
