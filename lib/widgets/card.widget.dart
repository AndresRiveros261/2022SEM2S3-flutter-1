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
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetallePage(
                        article: articulo,
                      )));
        },
        child: Container(
            color: Colors.red,
            height: 120,
            child: Column(
              children: [
                Text(articulo.author),
                Text(articulo.content),
              ],
            )),
      ),
    );
  }
}
