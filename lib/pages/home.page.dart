import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:newnoticias/models/article.model.dart';
import 'package:newnoticias/providers/articulos.provider.dart';
import 'package:newnoticias/widgets/card.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final articuloProvider = ArticuloProvider();
  late Future<List<ArticleModel>> articulos;
  @override
  void initState() {
    articulos = articuloProvider.getArticles();
    //print(response);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Noticia"),
        ),
        body: FutureBuilder(
            future: articulos,
            builder: ((context, snapshot) {
              List<CardWidget> lista = [];

              if (snapshot.hasData) {
                snapshot.data?.forEach(
                  (element) => lista.add(CardWidget(articulo: element)),
                );
                return ListView(
                  children: lista,
                );
              } else {
                return Text("vacio");
              }
            })));
  }
}
