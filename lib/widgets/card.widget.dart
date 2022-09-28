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

       
      ),
    );
  }
}
